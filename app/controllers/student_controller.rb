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

def index
  		if params[:search] #if value exists
  		#@pendings= Pending.Keyword_search (params[:search]) # going to Keyword_search method in Pending model class
  		#@pendings = Pending.find_by uid: 'U0005355'
      #@pendings = Pending.where(uid: (params[:search]) ).find_each

     @pendings = Pending.where(uid: params[:search])
     @student = Pending.where(uid: params[:search] ).take

     # @pendings = Pending.where("uid = ?",params[:search])
      #@student = Pending.where("uid = ?",params[:search]).take

     #@pendings = Pending.where(uid: 'U0005355')
     #@student = Pending.where(uid: 'U0005355').take
    else
    	@pendings= Pending.all
    end

    end
end
