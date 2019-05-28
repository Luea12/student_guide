class Event < ApplicationRecord
    belongs_to :teacher, :optional => true
    belongs_to :student, :optional => true
    has_and_belongs_to_many :teachers
    has_and_belongs_to_many :students

end
