class Section < ApplicationRecord
  belongs_to :professor
  belongs_to :course

  validates :number, presence: true
  validates :semester, presence: true
  validates :room, presence: true

  validates_uniqueness_of :number, scope: :course_id
end
