class SessionsController < ApplicationController

	skip_before_action :require_user, only: [:new, :create]

	def new
	end

	def create
		student = Student.find_by(email: params[:session][:email].downcase)
		if student && student.authenticate(params[:session][:password])
			session[:student_id] = student.id
			flash[:notice] = "You have logged in successfully!"
			redirect_to root_path
		else
			flash.now[:notice] = "Something was wrong with your login creadential"
			render 'new'
		end	
	end

	def destroy
		session[:student_id] = nil
		flash[:notice] = "You have logged out successfully!"
		redirect_to root_path
	end
end	