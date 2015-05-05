class ProfessorsController < ApplicationController
	@user
before_action :logged_in_user, only: [:show, :edit, :update, :index,:new,:create ]
before_action :correct_user,   only: [:show, :index]


  def index
  	@professors=Professor.all
  end
  def new
  	@professor = Professor.new 
  end
def create
  @professor = Professor.new(params.require(:professor).permit(:profName,:profEmail))
  	if  @professor.save
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

  # Confirms the correct user.
  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless current_user?(@user)
  end

end
