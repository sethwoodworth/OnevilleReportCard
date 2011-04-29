class Exam < ActiveRecord::Base
  acts_as_taggable_on :comment
  has_many :exam_assessments
end
