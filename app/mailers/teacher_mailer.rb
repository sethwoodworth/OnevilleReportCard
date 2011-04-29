class TeacherMailer < ActionMailer::Base
  default :from => "evan.burchard@gmail.com"

  def comments_email
    mail(:to => "evan.burchard@gmail.com",
         :subject => "Here are the comments")
    #mail(:to => user.email,
         #:subject => "Welcome to My Awesome Site")
  end
  #def comments_email(user)
    #@user = user
    #@url  = "http://example.com/login"
    #mail(:to => "evan.burchard@gmail.com",
         #:subject => "Here are the comments")
    ##mail(:to => user.email,
         ##:subject => "Welcome to My Awesome Site")
  #end
  
end
