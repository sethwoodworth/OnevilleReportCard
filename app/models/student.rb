class Student < ActiveRecord::Base
  acts_as_taggable_on :comment
  acts_as_taggable_on :comment
  belongs_to :user

  def self.delete_all_comments
    ActsAsTaggableOn::Tag.all.each do |t| t.delete end
  end
end
