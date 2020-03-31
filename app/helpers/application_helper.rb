module ApplicationHelper

	def session_link
		if logged_in?
		  # link_to 'Profile', student_path
		  # link_to 'Change Password', edit_student_path
		  link_to 'Log Out', logout_path, method: :delete
		else
			link_to 'Log In', login_path
			# link_to 'Sign Up', new_student_path
		end 
	end
end
