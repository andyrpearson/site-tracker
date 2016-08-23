class PlansController < ApplicationController

  def index
    @plans = Plan.all
  end

  def new
    @plan = Plan.new
  end

  def edit
    @plan = Plan.find(params[:id])
  end

  def create
    @plan = Plan.new(plan_params)

    if @plan.save
      redirect_to @plan
    else
      flash[:Error] = "Please complete all fields"
      render 'new'
    end
  end

  def update
    @plan = Plan.find(params[:id])

    if @plan.update(plan_params)
      redirect_to @plan
    else
      flash[:Error] = "Fail"
      render 'edit'
    end
  end

  def destroy
    @plan = Plan.find(params[:id]).destroy
    flash[:success] = "Plan deleted"
    redirect_to action: "index"
  end

  def show
    @plan = Plan.find(params[:id])
  end

  private
  def plan_params
    params.require(:plan).permit(:name, :price)
  end
end
