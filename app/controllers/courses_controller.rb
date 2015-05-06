class CoursesController < ApplicationController
@user
before_action :logged_in_user, only: [:show, :edit, :update, :index,:new,:create ]
 before_action :correct_user,   only: [:show]


  def index
     
  	@courses=Course.all
  end
  def new
    # @user = User.find(params[:id])
      @user ||= User.find_by(id: session[:user_id])
  	@course = Course.new 
  end
def create
  @course = Course.new(params.require(:course).permit(:course_id,:course_name))
  	if  @course.save
      flash[:danger] = "successfully stored"
  		redirect_to new_honor_path
  	else
      flash[:danger] = "some error with input data. Try again!!"
  		redirect_to new_honor_path
  	end 
 end 

# Confirms a logged-in user.
  def logged_in_user
    unless logged_in?
      flash[:danger] = "Please log in."
      redirect_to login_url(@user)
    end
  end

 def correct_user
    #@user = User.find(params[:id])
    @user ||= User.find_by(id: session[:user_id])
    redirect_to(root_url) unless current_user?(@current_user)
  end
end
