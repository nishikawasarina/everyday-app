class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.string  :name, null: false
      t.string  :image
      t.datetime :start_time, null: false
      t.timestamps
    end
  end
end
