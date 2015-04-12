class StudentController < ApplicationController
def new
  	@student =Student.new

  end
def edit
@student = Student.find(params[:id])
end
def show
  	@student = Student.find(params[:id])
  end
 
def update
@student = Student.find(params[:id])
if @student.update(params.require(:student).permit(:UID, :firstName, :lastName, :email, :phoneNumber, :status))
  redirect_to student_path(@student.id)
    else
      redirect_to message_student_path
  end
end
end
