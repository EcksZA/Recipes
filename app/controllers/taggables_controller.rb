class TaggablesController < ApplicationController
  def new
    @contributor = Contributor.find(params[:id])
    @tag = Tag.all
    render('taggables/new')
  end

  def create
    @contributor = Contributor.find(params[:id])
    @tag = Tag.all
    @taggable = Taggable.new(params[:taggable])

    if @taggable.save
      render('taggables/success')
    else
      render('taggables/new')
    end
  end
end
