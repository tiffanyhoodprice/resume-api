class Student < ActiveRecord::Base
  has_many :skills
  has_many :experiences
  has_many :educations

end
