class Group < ApplicationRecord
  has_many :students
  has_and_belongs_to_many :courses

  self.primary_key = 'group_no'

end
