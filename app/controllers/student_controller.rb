class StudentController < ApplicationController

  def index
    @students=Student.all
    @honors= Honor.all
    respond_to do |format|
    format.html
    format.csv { send_data(@students.to_csv) }
   # format.xls
  end

  end
  def failStu
  	@failstud = Student.all 

  end

  def studentIfo
	@students = Student.all
  end

  def IfoRevise
  @students = Student.find(params[:id])
  end

def new
  	@student =Student.new

  end
def edit
@student = Student.find(params[:id])
end

#def show
# 	@student = Student.find(params[:id])
#end

def show
      if params[:search]    
     @pendings = Honor.where(uid: params[:search])
     @student = Student.where(UID: params[:search] ).take
    else
      @pendings= Honor.all
    end

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
