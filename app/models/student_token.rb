class StudentToken < ApplicationRecord

  has_secure_token :token

end
