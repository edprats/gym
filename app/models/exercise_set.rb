class ExerciseSet < ActiveRecord::Base
  attr_accessible :date, :exercise_id, :reps, :weight

  before_save :default_date

  belongs_to :exercise

  private

  def default_date
  	self.date = Date.today
  end
end
