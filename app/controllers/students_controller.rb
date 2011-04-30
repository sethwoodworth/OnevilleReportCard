class StudentsController < ApplicationController 
  def general
  end
  def index
  end

  def attendance
    @attendances = Attendance.all
  end

  def tests
    @exams = Exam.all
  end

  def grades
    @subjects = Subject.all
  end

  def send_comments
    if TeacherMailer.comments_email(params[:comment], params[:student], params[:email], params[:phone]).deliver
      flash[:notice] = "Your comments have been sent to Mr. Wairi!" 
      redirect_to comments_path
    else
      flash[:error] = "Something went wrong..." 
      redirect_to comments_path
    end
    #TeacherMailer.comments_email(@user).deliver
  end

  def save_comment
    if params[:model] == "student"
      o = current_user.student
    elsif params[:model] == "exam"
      o = Exam.find(params[:object_id])
    elsif params[:model] == "subject"
      o = Subject.find(params[:object_id])
    elsif params[:model] == "attendance"
      o = Attendance.find(params[:object_id])
    end
    o.comment_list = [params[:comment]]
    if o.save
      redirect_to :back
    else
      redirect_to :back
    end
  end

end
