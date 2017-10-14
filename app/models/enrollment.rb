class Enrollment < ApplicationRecord
  belongs_to :section
  belongs_to :student
  validates_uniqueness_of :section_id, scope: :student_id

end
