class CreateTrainings < ActiveRecord::Migration[7.0]
  def change
    create_table :trainings do |t|
      t.string :location
      t.float :distance
      t.time :duration
      t.time :starthour
      t.date :trainingdate
      t.integer :feel

      t.timestamps
    end
  end
end
