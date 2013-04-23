class Workout < ActiveRecord::Base
  attr_accessible :name, :user_id

  has_many :exercises
end
