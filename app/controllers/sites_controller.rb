class SitesController < ApplicationController
  def index
    @sites = Site.all
    if params[:search]
      @sites = Site.search(params[:search]).order("created_at DESC")
    end
  end

  def show
    @site = Site.find(params[:id])
  end

  def new
    @site = Site.new
  end

  def edit
    @site = Site.find(params[:id])
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

  def update
    @site = Site.find(params[:id])

    if @site.update(site_params)
      redirect_to @site
    else
      flash[:Error] = "Fail"
      render 'edit'
    end
  end

  def destroy
    @site = Site.find(params[:id])
    @site.destroy

    redirect_to sites_path
  end

  private
  def site_params
    params.require(:site).permit(:name, :url, :plan_id)
  end
end
