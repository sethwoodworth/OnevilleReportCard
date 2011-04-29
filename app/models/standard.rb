class Standard < ActiveRecord::Base
  belongs_to :subject
  has_many :assessments
end
