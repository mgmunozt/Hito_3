class CreateConditions < ActiveRecord::Migration[7.0]
  def change
    create_table :conditions do |t|
      t.integer :attendance
      t.integer :duration
      t.string :place
      t.date :datetime

      t.timestamps
    end
  end
end
