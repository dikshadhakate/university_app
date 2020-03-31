class StudentsController < ApplicationController

	before_action :set_student, only: [:show, :edit, :update]

	def index
		@students = Student.all
	end

	def new
		@student = Student.new	
	end

	def create
		@student = Student.new(student_params)
		if @student.save
			flash[:notice] = "You have signed up successfully!"
			redirect_to root_path
		else	
			render 'new'
		end
	end

	def show
	end

	def edit
	end

	def update
		@student.update_attributes(student_params)
		if @student.save
			flash[:notice] = "Profile updated successfully!"
			redirect_to student_path
		else
			render 'edit'
		end	
	end

	private

	def student_params
		params.require(:student).permit(:student_name, :email)
	end

	def set_student
		@student = Student.find(params[:id])
	end

end	