class HeroinesController < ApplicationController
  
  before_action :find_heroine, only: [:show]
  
  def index
    @heroines = Heroine.all
  end

  def show    
  end

  def new
    @heroine = Heroine.new
    @heroine = @heroine.heroines_powers.build
  end

  def create
    @heroine = Heroine.create(heroine_params)
    if @heroine.valid?
      redirect_to @heroine
    else
      render :new
    end
  end

  private

  def heroine_params
    params.require(:heroine).permit(:super_name, :name)
  end

  def find_heroine
    @heroine = Heroine.find(params[:id])
  end
end
