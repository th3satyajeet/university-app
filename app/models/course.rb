class Course < ApplicationRecord
    validates :name, presence: true, length: { minimum: 4, maximum: 60}
    validates :short_name, presence: true, length: { minimum: 3, maximum: 15}
    validates :description, presence: true, length: { minimum: 10, maximum: 600}
    has_many :student_courses
    has_many :students, through: :student_courses
end