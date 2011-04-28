class CreateAnomalies < ActiveRecord::Migration
  def self.up
    create_table :anomalies do |t|
      t.integer :attendance_id
      t.string :kind
      t.string :justification
      t.date :school_date
      t.time :moment

      t.timestamps
    end
  end

  def self.down
    drop_table :anomalies
  end
end
