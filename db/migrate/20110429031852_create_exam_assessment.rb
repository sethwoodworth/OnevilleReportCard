class CreateExamAssessment < ActiveRecord::Migration
  def self.up
    create_table :exam_assessments do |t|
      t.references :exam
      t.datetime :period

      t.timestamps
    end
  end

  def self.down
    drop_table :exam_assessments
  end
end
