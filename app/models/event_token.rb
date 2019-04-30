class EventToken < ApplicationRecord

  has_secure_token :token

end
