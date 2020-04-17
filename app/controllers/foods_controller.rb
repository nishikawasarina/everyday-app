class FoodsController < ApplicationController
  def index
    
  end

  def new
    @food = Food.new
  end

  def create
    Food.create(food_params)
    redirect_to foods_path
  end
private
  def food_params
    params.require(:food).permit(:name, :image, :time)
  end
end
