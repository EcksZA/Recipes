class TagsController < ApplicationController
  def index
    @tag = Tag.all
    render('tags/index.html.erb')
  end

  def show
    @tag = Tag.find(parameters[:id])
    render('tags/show.html.erb')
  end

  def new
    @tag = Tag.new
    render('tags/new.html.erb')
  end

  def create
    @tag = Tag.new(params[:tag])
    if @tag.save
      flash[:notice] = 'You created a new tag!'
      redirect_to("/tags")
    else
      render('tags/new.html.erb')
    end
  end

  def edit
    @tag = Tag.find(params[:id])
    render('tags/edit.html.erb')
  end
end
