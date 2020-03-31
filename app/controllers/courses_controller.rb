class CoursesController < ApplicationController

	skip_before_action :require_user

	def index
		@courses = Course.all
	end

	def show
		# byebug
		@course = Course.find(params[:id])
	end

end	