class Attendance < ActiveRecord::Base
  acts_as_taggable_on :comment

  has_many :anomalies
  def lates
    anomalies.select {|a| a.kind == "late"}
  end
  def absences
    anomalies.select {|a| a.kind == "absent"}
  end
end
