class Exam < ActiveRecord::Base
  acts_as_taggable
  has_many :exam_assessments
end
