class StudentsController < ApplicationController

@user
before_action :logged_in_user, only: [:show, :edit, :update]
before_action :correct_user,   only: [:show, :edit, :update]

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
 
  		if params[:search] 
  	
     @pendings = Honor.where(uid: params[:search])
     @student = Student.where(UID: params[:search] ).take
    else
    	@pendings= Honor.all
    end

    end

  # Confirms a logged-in user.
  def logged_in_user
    unless logged_in?
      flash[:danger] = "Please log in."
      redirect_to login_url(@user)
    end
  end


  # Confirms the correct user.
  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless current_user?(@user)
  end
	
end
