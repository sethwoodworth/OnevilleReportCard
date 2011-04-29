class CreateStandards < ActiveRecord::Migration
  def self.up
    create_table :standards do |t|
      t.string :description
      t.string :subject_id

      t.timestamps
    end
  end

  def self.down
    drop_table :standards
  end
end
