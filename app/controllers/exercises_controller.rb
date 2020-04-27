class ExercisesController < ApplicationController
  def index
    @exercises = Exercise.all
  end
  def new
    @exercise = Exercise.new
  end

  def create
    # binding.pry
    @exercise = Exercise.new(exercise_params)
    if @exercise.save
      redirect_to action: :index

    else
      render :new
    end
    
  end
private
  def exercise_params
    params.require(:exercise).permit(:menu, :amount, :memo, :start_time)
  end
end
