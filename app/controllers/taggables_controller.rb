class TaggablesController < ApplicationController
  def new
    @contributor = Contributor.find(params[:id])
    @tag = Tag.all
  end
end
