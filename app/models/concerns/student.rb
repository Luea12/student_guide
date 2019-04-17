class Student < ApplicationRecord

  has_secure_password

  belongs_to :group
  has_and_belongs_to_many :optionals
end
