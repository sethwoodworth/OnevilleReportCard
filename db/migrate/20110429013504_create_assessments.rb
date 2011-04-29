class CreateAssessments < ActiveRecord::Migration
  def self.up
    create_table :assessments do |t|
      t.datetime :period
      t.string :score
      t.integer :standard_id

      t.timestamps
    end
  end

  def self.down
    drop_table :assessments
  end
end
