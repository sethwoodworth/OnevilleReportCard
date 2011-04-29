class Student < ActiveRecord::Base
  acts_as_taggable_on :comment
  acts_as_taggable_on :comment
  belongs_to :user
end
