class Subject < ActiveRecord::Base
  acts_as_taggable_on :comment
  has_many :standards
end
