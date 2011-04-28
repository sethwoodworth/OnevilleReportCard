class Attendance < ActiveRecord::Base
  has_many :anomalies
  def lates
    anomalies.select {|a| a.kind == "late"}
  end
  def absences
    anomalies.select {|a| a.kind == "absent"}
  end
end
