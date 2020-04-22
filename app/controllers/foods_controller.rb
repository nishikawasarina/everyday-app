class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end

  def new
    @food = Food.new
  end

  def create
    # binding.pry
    @food = Food.new(food_params)
    if @food.save
      redirect_to action: :index

    else
      render :new
    end
    
  end
private
  def food_params
    params.require(:food).permit(:name, :image, :start_time)
  end
end
