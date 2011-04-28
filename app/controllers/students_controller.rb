class StudentsController < ApplicationController 
  def general
  end
  def index
  end

  def attendance
    @attendances = Attendance.all
  end
end
