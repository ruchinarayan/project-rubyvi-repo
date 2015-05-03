class StudentController < ApplicationController

  def index
    @students=Student.all
    @user = User.find(params[:id])
    @honors= Honor.all
    respond_to do |format|
    format.html
    format.csv { send_data(@students.to_csv) }
   # format.xls
  end

 def search
    @student = Student.where(UID: params[:search] )
    @pendings= Honor.where(uid: params[:search])
    #@student = Student.Keyword_search (params[:search])
    
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
      if params[:id] != nil
      @student = Student.find(params[:id])
    end
      @pendings= Honor.all
    end

end

def notes
  @student = Student.find(params[:id])
  end 
 
def update
@student = Student.find(params[:id])
if @student.update(params.require(:student).permit(:UID, :firstName, :lastName, :email, :phoneNumber, :status, :notes))
  redirect_to session[:search_results]
    else
      redirect_to message_student_path
  end
end


end
