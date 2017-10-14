class Section < ApplicationRecord
  belongs_to :professor
  belongs_to :course
  #belongs_to :enrollment
  has_many :enrollments, :dependent => :destroy
  #has_many :students, :dependent => :destroy
  validates :number, presence: true
  validates :semester, presence: true
  validates :room, presence: true

  validates_uniqueness_of :number, scope: :course_id
end
