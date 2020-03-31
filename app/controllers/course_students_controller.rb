class CourseStudentsController < ApplicationController

	def create
		course_to_add = Course.find(params[:course_id])
		unless current_user.courses.include?(course_to_add)
			CourseStudent.create(course: course_to_add, student: current_user)
			flash[:notice] = "You have successfully enroll for this course #{course_to_add.course_name}"
			redirect_to current_user
		else	
			flash[:notice] = "Something went wrong with your credential!"
			redirect_to root_path
		end
	end

end	