class ExamAssessment < ActiveRecord::Base
  belongs_to :exam
  has_many :sections
  belongs_to :student
  acts_as_taggable_on :comment
end
