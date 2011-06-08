class StudentsController < ApplicationController 
  def general
    if current_admin
      @admin = true
      @student_to_view = params[:student_to_view] 
      if @student_to_view 
        session[:student_to_view] = @student_to_view
      else
        session[:student_to_view] = Student.first
      end
      @student = Student.find(session[:student_to_view])
    end
    @student ||= current_user.student 
  end
  def index
  end

  def attendance
    if current_admin
      @admin = true
      @student_to_view = params[:student_to_view] 
      if @student_to_view 
        session[:student_to_view] = @student_to_view
      else
        session[:student_to_view] = Student.first
      end
      @student = Student.find(session[:student_to_view])
    end
    @student ||= current_user.student
    @attendances = Attendance.find_all_by_student_id(@student.id)
  end

  def grades
    if current_admin
      @admin = true
      @student_to_view = params[:student_to_view] 
      if @student_to_view 
        session[:student_to_view] = @student_to_view
      else
        session[:student_to_view] = Student.first
      end
      @student = Student.find(session[:student_to_view])
    end
    @subjects = Subject.all
    @student ||= current_user.student 
  end

  def tests
    if current_admin
      @admin = true
      @student_to_view = params[:student_to_view] 
      if @student_to_view 
        session[:student_to_view] = @student_to_view
      else
        session[:student_to_view] = Student.first
      end
      @student = Student.find(session[:student_to_view])
    end
    @student ||= current_user.student 
    @exams = Exam.all
  end

  def comments
    if current_admin
      @admin = true
      @student_to_view = params[:student_to_view] 
      if @student_to_view 
        session[:student_to_view] = @student_to_view
      else
        session[:student_to_view] = Student.first
      end
      @student = Student.find(session[:student_to_view])
    end
    @student ||= current_user.student 
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
    elsif params[:model] == "exam_assessment"
      o = ExamAssessment.find(params[:object_id])
    elsif params[:model] == "assessment"
      o = Assessment.find(params[:object_id])
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
