class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
    	t.string :course_code
    	t.string :course_name
    	t.text   :course_description, null: true
    	t.timestamps
    end

    create_table :students do |t|
    	t.string :student_name
    	t.string :email
    	t.string :password
    	t.timestamps
    end
  end
end
