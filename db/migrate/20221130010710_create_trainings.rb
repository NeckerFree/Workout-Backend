class CreateTrainings < ActiveRecord::Migration[7.0]
  def change
    create_table :trainings do |t|
      t.string :location
      t.float :distance
      t.time :duration
      t.time :start_hour
      t.date :training_date
      t.integer :feel

      t.timestamps
    end
  end
end
