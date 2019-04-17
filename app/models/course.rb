class Course < ApplicationRecord
  belongs_to :teacher, :optional => true
  has_and_belongs_to_many :groups
end
