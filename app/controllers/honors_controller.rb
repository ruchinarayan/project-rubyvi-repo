class HonorsController < ApplicationController
@user
before_action :logged_in_user, only: [:show, :edit, :update, :index,:create, :new ]
before_action :correct_user,   only: [ :edit, :update,:index_search_list_url]


  def index
  	@honors= Honor.all
    @courses=Course.all
    @professors=Professor.all
  end
  
  def new
     #@user = User.find(params[:id])
     @current_user ||= User.find_by(id: session[:user_id])
  	@honor = Honor.new  
    if params[:student] != nil
     @student =  Student.find(params[:student])
    @honor.uid = @student.UID
  end
  end

  def create
 
  @honor = Honor.new(params.require(:honor).permit(:contract_id,:uid,:course_id, :prof_email, :semester, :year, :grade, :dates))
  @honor.dates = DateTime.now 
  	if  @honor.save
       flash[:danger] = "Successfully stored"
  		redirect_to honor_url(@honor)
  	else
      flash[:danger] = "Some error with input data. Try again!!"
  		redirect_to new_honor_url
  	end 
 end 
 def show
  	@honor = Honor.find(params[:id])
  end

   def edit
    @current_user ||= User.find_by(id: session[:user_id])
     @honor = Honor.find(params[:id])
  end

  def update
     @honor = Honor.find(params[:id])
     if @honor.update(params.require(:honor).permit(:course_id,:prof_email ,:semester, :grade))
          flash[:danger] = "Successfully saved!!"
          redirect_to index_search_list_url(@honor)
    else
      flash[:danger] = "some error!!"
         redirect_to index_search_list_url
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
    #@user = User.find(params[:id])
    @user ||= User.find_by(id: session[:user_id])
    redirect_to(root_url) unless current_user?(@current_user)
  end
  
end
