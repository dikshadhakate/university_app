class Course < ActiveRecord::Base

	validates :course_code, :course_name, :course_description, presence: true

end	