class StudentController < ApplicationController

  def studentList
  	@students = Student.all

  end
  def failStu
  	@failstud = Student.all 

  end

  def studentIfo
	@students = Student.all
  end
  def IfoRevise
  		@students = Student.all
  end

end
