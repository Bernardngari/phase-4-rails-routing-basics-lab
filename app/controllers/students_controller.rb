class StudentsController < ApplicationController
	def index
		students = Student.all
		render json: students
	end

	def grades
		students_by_grades_ascending = Student.all.order(grade: :desc)
		render json: students_by_grades_ascending
	end

	def highest_grade
		student_highest_grade = Student.order(grade: :desc).first
		render json: student_highest_grade
	end
end
