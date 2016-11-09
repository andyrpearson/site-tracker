class OrganisationsController < ApplicationController
  def index
    @organisations = Organisation.all
  end

  def show
    @organisation = Organisation.find(params[:id])
  end

  def new
  end

  def edit
  end

  def create
    @organisation = Organisation.new(organisation_params)

    @organisation.save
    redirect_to @organisation
  end

  def update
  end

  def destroy
  end

  private
  def organisation_params
    params.require(:organisation).permit(:name)
  end
end
