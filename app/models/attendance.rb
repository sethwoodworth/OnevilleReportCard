class Attendance < ActiveRecord::Base
  acts_as_taggable_on :comment
  belongs_to :student

  has_many :anomalies
  def lates_by_month(month)
    anomalies.select {|a| a.kind == "late" && a.school_date.month == month }
  end
  def lates
    anomalies.select {|a| a.kind == "late" }
  end
  def absences
    anomalies.select {|a| a.kind == "absent"}
  end
end
