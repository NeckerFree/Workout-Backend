class AddUserRefToTrainings < ActiveRecord::Migration[7.0]
  def change
    add_reference :trainings, :user, null: false, foreign_key: true
  end
end
