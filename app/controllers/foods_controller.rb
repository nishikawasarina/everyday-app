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
      flash[:notice] = "食事を記録しました！"
    else
      flash[:alert] = "食事内容を入力してください"
      render :new
    end
  end
private
  def food_params
    params.require(:food).permit(:name, :image, :start_time)
  end
end
