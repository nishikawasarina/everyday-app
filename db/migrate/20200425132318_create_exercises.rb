class CreateExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :exercises do |t|
      t.string :menu, null: false
      t.string :amount, null: false
      t.string :memo
      t.datetime :start_time, null: false
      t.timestamps
    end
  end
end
