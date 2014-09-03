class ContributorsController < ApplicationController
  def index
    @contributor = Contributor.all
    render('contributors/index.html.erb')
  end
end
