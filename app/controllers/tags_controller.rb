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
end
