class CreateSections < ActiveRecord::Migration
  def self.up
    create_table :sections do |t|
      t.references :exam_assessment
      t.string :name
      t.integer :score

      t.timestamps
    end
  end

  def self.down
    drop_table :sections
  end
end
