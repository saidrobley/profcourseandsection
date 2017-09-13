class Section < ApplicationRecord

  validates :number, presence: true
  validates :semester, presence: true
  validates :room, presence: true
  belongs_to :professor
  belongs_to :course
  validates_uniqueness_of :number, scope: :course_id
end
