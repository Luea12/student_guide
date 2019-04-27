class Teacher < ApplicationRecord

  has_secure_password

  has_many :courses

  EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i
  PASSWORD_REGEX = /\A.*(?=.{8,})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(^[a-zA-Z0-9@\$=!:.#%]+$)\Z/
  FORBIDDEN_USERNAMES = ['admin']

  validates :first_name, :presence => true,
                         :length => { :within => 2..50 }
  validates :last_name, :presence => true,
                        :length => { :within => 2..50 }
  validates :username, :presence => true,
                       :length => { :within => 5..25 }
                       #:uniqueness => true
  validates :email, :presence => true,
                    :length => { :maximum => 100 },
                    :format => { :with => EMAIL_REGEX }
                    #:uniqueness => true
  validates :password, :presence => true,
                       :length => { :within => 8..25 },
                       :format => { :with => PASSWORD_REGEX }

  validate :username_is_allowed

  def name
    "#{first_name} #{last_name}"
  end

  private

  def username_is_allowed
    if FORBIDDEN_USERNAMES.include?(username)
      errors.add(:username, "has been restricted from use.")
    end
  end

end