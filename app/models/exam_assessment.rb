class ExamAssessment < ActiveRecord::Base
  belongs_to :exam
  has_many :sections
  belongs_to :student
end
