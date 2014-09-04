class ContributorsController < ApplicationController
  def index
    @contributor = Contributor.all
    render('contributors/index.html.erb')
  end

  def show
    @contributor = Contributor.find(params[:id])
    render('contributors/show.html.erb')
  end

  def new
    @contributor = Contributor.new
    render('contributors/new.html.erb')
  end

  def create
    @contributor = Contributor.new(params[:contributor])
    if @contributor.save
      flash[:notice] = 'Your recipe was added!'
      redirect_to("/contributors/#{@contributor.id}")
    else
      render('contributors/new.html.erb')
    end
  end

  def edit
    @contributor = Contributor.find(params[:id])
    render('contributors/edit.html.erb')
  end

  def update
    @contributor = Contributor.find(params[:id])

    if @contributor.update(params[:contributor])
      flash[:notice] = 'Your recipe was edited!'
      redirect_to("/contributors/#{@contributor.id}")
    else
      render('contributors/edit.html.erb')
    end
  end

  def destroy
    @contributor = Contributor.find(params[:id])
    @contributor.destroy
    flash[:notice] = "Your recipe was deleted!"
    redirect_to("/contributors")
  end

  def newtag
    contributor = Contributor.find(params[:id])
    @tag = contributer.tag.new
    render('contributer/newtag.html.erb')
  end
end
