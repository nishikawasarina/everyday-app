class MeasuresController < ApplicationController
  def index
    @measures = Measure.pluck(:created_at, :measure)
  end
  def new
    @measure = Measure.new
  end
  def create
    @measure = Measure.new(measure_params)
    if @measure.save
      redirect_to action: :index
      flash[:notice] = "血糖値を記録しました！"

    else
      flash[:alert] = "血糖値を入力してください"
      render :new
    end
  end
  private
  def measure_params
    params.require(:measure).permit(:measure)
  end
end
