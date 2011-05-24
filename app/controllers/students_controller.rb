class StudentsController < ApplicationController 
  def general
    @student = current_user.student 
  end
  def index
  end

  def attendance
    @attendances = Attendance.find_all_by_student_id(current_user.student.id)
  end

  def tests
    @student = current_user.student 
    @exams = Exam.all
  end

  def grades
    @subjects = Subject.all
    @student = current_user.student 
  end

  def send_comments
    #if TeacherMailer.comments_email(params[:comment], params[:student], params[:email], params[:phone]).deliver
      #current_user.update_attribute(:comments_sent, true)
    
   Student.delete_all_comments
   redirect_to done_path
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
