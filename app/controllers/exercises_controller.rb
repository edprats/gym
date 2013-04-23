class ExercisesController < ApplicationController

	def new
		@workout = Workout.find(params[:workout_id])
		@exercise = @workout.exercises.build
	end

	def create
		@workout = Workout.find(params[:workout_id])
		@exercise = @workout.exercises.build(params[:exercise])

		if @exercise.save
			redirect_to workout_path(@workout)
		else
			render action: :new
		end
	end

  def destroy
    @exercise = Exercise.find(params[:id])
    @exercise.destroy

    respond_to do |format|
      format.html { redirect_to @exercise.workout }
    end
  end

end
