class Section < ActiveRecord::Base
  belongs_to :assessment
  belongs_to :exam_assessment
end
