class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def grades 
    students = Student.order(grade: :desc)
    render json: students
  end
  
  def highest_grade 
    student = Student.order(grade: :desc).limit(1)
    render json: student
  end

  # this one is from the official solution, it also 
  # works in the rails console
  def highest_grade_other
    student = Student.order(grade: :desc).first
    render json: student
  end
  
end
