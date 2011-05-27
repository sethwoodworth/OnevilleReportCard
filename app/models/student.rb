class Student < ActiveRecord::Base
  acts_as_taggable_on :comment
  belongs_to :user
  has_many :assessments
  has_many :exam_assessments
  has_many :attendances

  def self.delete_all_comments
    ActsAsTaggableOn::Tag.all.each do |t| t.delete end
  end
  def first_name
    name.split(" ").first
  end
  def last_name
    name.split(" ").last
  end

end
