class ContributorsController < ApplicationController
  def index
    @contributor = Contributor.all
    render('contributors/index.html.erb')
  end

  def show
    @contributor = Contributor.find(params[:id])
    render('contributors/show.html.erb')
  end
end
