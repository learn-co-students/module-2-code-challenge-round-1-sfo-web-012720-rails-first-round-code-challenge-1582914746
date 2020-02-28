class HeroinesController < ApplicationController
  before_action :find_heroine ,only: [:show]
  
  def index
    @heroines = Heroine.all
  end

  def new
    @heroine = Heroine.new
  end

  def create 
    @heroine = Heroine.new(heroine_params)

    if @heroine.save
      redirect_to @heroine
    else
      render 'new'
    end
 
  end

  def show

  end

  private 
  #strong params
    def find_heroine
      @heroine = Heroine.find(params[:id])
    end

    def heroine_params
      params.require(:heroine).permit(:name,:super_name)
    end

end
