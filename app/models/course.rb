class Course < ApplicationRecord
  has_many :sections, :dependent => :destroy
  #has_many :students, through: :enrollment
  validates_uniqueness_of :name
end
