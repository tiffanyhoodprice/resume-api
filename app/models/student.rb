class Student < ActiveRecord::Base
  has_many :skills
  has_many :experiences
  has_many :educations
  belongs_to :user
  validates :first_name, :last_name, presence: true
end
