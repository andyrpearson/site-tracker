class SitesController < ApplicationController
  def index
    @sites = Site.all
  end

  def show
    @site = Site.find(params[:id])
  end

  def new
    @article = Site.new
  end

  def create
    @site = Site.new(site_params)

    if @site.save
      redirect_to @site
    else
      flash[:Error] = "Please complete all fields"
      render 'new'
    end
  end

  private
  def site_params
    params.require(:site).permit(:name, :url)
  end
end
