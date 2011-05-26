class Assessment < ActiveRecord::Base
  belongs_to :standard
  belongs_to :student
  acts_as_taggable_on :comment
end
