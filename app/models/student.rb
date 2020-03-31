class Student < ActiveRecord::Base

	before_save { self.email = email.downcase }

	validates :student_name, presence: true, length: {minimum: 3, maximum: 50}
	validates :email, presence: true, uniqueness: { case_sensitive: false }, length: {maximum: 105}
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

	# has_secure_password
end
