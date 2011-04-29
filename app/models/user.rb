class User < ActiveRecord::Base
  acts_as_tagger
  has_one :student
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  def name
    student.name
  end
  def first_name
    student.name.split(" ").first
  end
  def last_name
    student.name.split(" ").last
  end
end
