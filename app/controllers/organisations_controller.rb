class OrganisationsController < ApplicationController
  def index
    @organisations = Organisation.all
  end

  def show
    @organisation = Organisation.find(params[:id])
  end

  def new
    @organisation = Organisation.new
  end

  def edit
    @organisation = Organisation.find(params[:id])
  end

  def create
    @organisation = Organisation.new(organisation_params)

    if @organisation.save
      redirect_to @organisation
    else
      flash[:Error] = "Please complete all fields"
      render 'new'
    end
  end

  def update
      @organisation = Organisation.find(params[:id])

      if @organisation.update(organisation_params)
        redirect_to @organisation
      else
        flash[:Error] = "Fail"
        render 'edit'
      end
  end

  def destroy
      @organisation = Organisation.find(params[:id])
      @organisation.destroy
      flash[:success] = "Organisation deleted"
      redirect_to organisations_path
  end

  private
  def organisation_params
    params.require(:organisation).permit(:name)
  end
end
