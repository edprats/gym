class ExerciseSetsController < ApplicationController

	def new
		@exercise = Exercise.find(params[:exercise_id])
		@exercise_set = @exercise.exercise_sets.build
	end

	def create
		@exercise = Exercise.find(params[:exercise_id])
		@exercise_set = @exercise.exercise_sets.build(params[:exercise_set])

		if @exercise_set.save
			redirect_to workout_path(@exercise.workout)
		else
			render action: :new
		end
	end

  def destroy
    @exercise = ExerciseSet.find(params[:id])
    @exercise.destroy

    respond_to do |format|
      format.html { redirect_to @exercise.exercise.workout }
    end
  end
end
