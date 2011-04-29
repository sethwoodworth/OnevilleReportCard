class Subject < ActiveRecord::Base
  acts_as_taggable
  has_many :standards
end
