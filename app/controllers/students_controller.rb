class StudentsController < ApplicationController 
  def general
  end
  def index
  end

  def attendance
    @attendances = Attendance.all
  end

  def grades
    @subjects = Subject.all
  end

  def send_comments
    if TeacherMailer.comments_email.deliver
      flash[:notice] = "Your comments have been sent to Mr. Warai!" 
      redirect_to comments_path
    else
      flash[:error] = "Something went wrong..." 
      redirect_to comments_path
    end
    #TeacherMailer.comments_email(@user).deliver
  end

end
