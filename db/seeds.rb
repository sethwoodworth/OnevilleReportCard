# Must register a user first (uses the last created user for the student connection)
Student.delete_all
Attendance.delete_all
Anomaly.delete_all
student = Student.create(:name => "Joe Cooper", :user_id => User.last.id)
months = [3, 4, 5]
months.each do |m|
  Attendance.create({:student_id => student.id, :month =>  m, :year => 2011})
end
Anomaly.create(:attendance_id => Attendance.first.id, :kind => "absent", :school_date => Time.new(2011, 4, 21))
Anomaly.create(:attendance_id => Attendance.first.id, :kind => "absent", :school_date => Time.new(2011, 4, 6))
Anomaly.create(:attendance_id => Attendance.first.id, :kind => "late", :moment => Time.new(2011, 4, 4, 9), :school_date => Time.new(2011, 4, 4))
Anomaly.create(:attendance_id => Attendance.all[1].id, :kind => "late", :moment => Time.new(2011, 5, 5, 9), :school_date => Time.new(2011, 5, 5))
