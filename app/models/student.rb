class Student < ApplicationRecord
  has_many :enrollments, :dependent => :destroy
  validates_uniqueness_of :name
end
