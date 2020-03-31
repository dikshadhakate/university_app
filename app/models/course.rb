class Course < ActiveRecord::Base
	has_many :course_students
	has_many :students, through: :course_students
	validates :course_code, :course_name, :course_description, presence: true

end	