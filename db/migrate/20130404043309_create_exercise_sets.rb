class CreateExerciseSets < ActiveRecord::Migration
  def change
    create_table :exercise_sets do |t|
      t.decimal :weight
      t.integer :reps
      t.integer :exercise_id
      t.datetime :date

      t.timestamps
    end
  end
end
