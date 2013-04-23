class Exercise < ActiveRecord::Base
  attr_accessible :name, :workout_id

  belongs_to :workout
  has_many :exercise_sets

  def grouped_exercise_sets
  	exercise_sets.group_by(&:date)
  end

  def previous_day_sets
  	last_created_at = exercise_sets.
  		order("created_at DESC").all
  end
end
