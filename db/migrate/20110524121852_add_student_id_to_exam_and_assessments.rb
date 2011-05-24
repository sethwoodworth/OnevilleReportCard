class AddStudentIdToExamAndAssessments < ActiveRecord::Migration
  def self.up
    add_column :exam_assessments, :student_id, :integer
    add_column :assessments, :student_id, :integer
  end

  def self.down
    remove_column :assessments, :student_id
    remove_column :exam_assessments, :student_id
  end
end
