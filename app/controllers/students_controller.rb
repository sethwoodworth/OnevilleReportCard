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
    #if TeacherMailer.comments_email(params[:comment], params[:student], params[:email], params[:phone]).deliver
      #current_user.update_attribute(:comments_sent, true)

    
    redirect_to comments_path
   # else
      #redirect_to comments_path
   # end
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
      flash[:notice] = "Your comment has been saved!" 
      redirect_to :back
    else
      flash[:alert] = "Something went wrong..." 
      redirect_to :back
    end
  end

end
