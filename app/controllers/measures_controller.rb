class MeasuresController < ApplicationController
  def index
    # @data = [['2019-06-01', 50], ['2019-06-02', 250], ['2019-06-03', 150], ['2019-06-04', 150]]
    @measures = Measure.pluck(:created_at, :measure)
    # @created_ats = []
    # @measures.each do |rec|
    #   @created_ats << rec.created_at
    # end
  end
  def new
    @measure = Measure.new
  end
  def create
    @measure = Measure.new(measure_params)
    if @measure.save
      redirect_to action: :index

    else
      render :new
    end
  end
  private
  def measure_params
    params.require(:measure).permit(:measure)
  end
end
