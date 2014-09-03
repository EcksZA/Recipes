class TagsController < ApplicationController
  def index
    @tag = Tag.all
    render('tags/index.html.erb')
  end
end
