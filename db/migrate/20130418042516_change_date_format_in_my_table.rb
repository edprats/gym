class ChangeDateFormatInMyTable < ActiveRecord::Migration
  def self.up
   change_column :exercise_sets, :date, :datetime
  end

  def self.down
   change_column :exercise_sets, :date, :date
  end
end
