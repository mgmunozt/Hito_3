class CreateLogistics < ActiveRecord::Migration[7.0]
  def change
    create_table :logistics do |t|
      t.string :Activity
      t.integer :crew
      t.date :date
      t.integer :activity_type

      t.timestamps
    end
  end
end
