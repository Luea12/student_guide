class TeacherToken < ApplicationRecord

  has_secure_token :token

end
