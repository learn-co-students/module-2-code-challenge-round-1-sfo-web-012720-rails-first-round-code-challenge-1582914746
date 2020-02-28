class PowersController < ApplicationController

  before_action :find_power, only: [:show, :edit, :update]

  def index
    @powers = Power.all
  end

  def show
  end

  def edit
  end

  def update
    @power.update(power_params)
    redirect_to powers_path
  end

  private

  def power_params
    params.require(:power).permit(:name, :description, heroine_ids: [])
  end

  def find_power
    @power = Power.find(params[:id])
  end
end
