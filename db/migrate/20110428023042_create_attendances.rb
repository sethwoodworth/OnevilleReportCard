class CreateAttendances < ActiveRecord::Migration
  def self.up
    create_table :attendances do |t|
      t.integer :student_id
      t.integer :month
      t.integer :year

      t.timestamps
    end
  end

  def self.down
    drop_table :attendances
  end
end
