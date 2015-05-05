class PendingsController < ApplicationController

  before_action :logged_in_user, only: [:show, :index,:search, :edit, :update, :destroy]
  before_action :correct_user,   only: [:show, :index,:search, :edit, :update, :destroy]

  	#@pendings= Pending.all
  	def index
  		if params[:users] != nil
  		@user = User.find(params[:users])
  	    end
      @current_user ||= User.find_by(id: session[:user_id])
  		if params[:search] #if value exists
  			@pendings= Pending.Keyword_search (params[:search]) # going to Keyword_search method in Penging model class
    	else
    		@pendings= Pending.all
   		end
        @honors= Honor.all
        @Professors=Professor.all
        @students=Student.all
    end


  
  def search
  	@pendingConts = Pending.search params[:search]
  end
  def show
    @pending = Pending.find(params[:id])
  end
  
  def edit
    @pending = Pending.find(params[:id])
  end
  def update
    @pending = Pending.find(params[:id])
    if @pending.update(params.require(:pending).permit(:contract_id,:uid,:firstName,:lastName,:email,:phoneNumber,:semester,:profName,
      :profEmail,:course_id,:year,:present_date,:grade,:pdf))
      @student=Student.new(:UID => @pending.uid,:firstName => @pending.firstName,:lastName => @pending.lastName,:email => @pending.email,:phoneNumber => @pending.phoneNumber, :status => "active")
      @professor=Professor.new(:profName => @pending.profName,:profEmail => @pending.profEmail)
      @honor=Honor.new(:contract_id => @pending.contract_id,:uid => @pending.uid,:course_id => @pending.course_id,
       :prof_email => @pending.profEmail,:semester => @pending.semester,:year => @pending.year,:grade => @pending.grade,:pdf => '',:dates => @pending.present_date)
      if @honor.save and @professor.save and @student.save
        @pending.destroy
        redirect_to pendings_list_url
      else
        redirect_to pendings_list_url
      end
    else
      redirect_to pendings_list_url
    end
  end
  def destroy   
    @pending = Pending.find(params[:id])
    @pending.destroy
  	#redirect_to pendings_list_url(:users => @user.id)
  	redirect_to pendings_list_url
  end

  def logged_in_user
    unless logged_in?
      flash[:danger] = "Please log in."
      redirect_to login_url(@user)
    end
  end

  # Confirms the correct user.
  def correct_user
    #@user = User.find(params[:id])
    @current_user ||= User.find_by(id: session[:user_id])
    redirect_to(root_url) unless current_user?(@current_user)
  end

  #contract form to populate pending
  def new
    @pending = Pending.new
  end

  # def create
  #   @pending = Pending.new
  # end

  #used to post to the pending table
  def create

      @pending = Pending.new(params.require(:pending).permit(:uid, :firstName, :lastName, :email, :phoneNumber, :semester, :profName, :profEmail, :course_id, :year, :present_date, :contract_id, :creditHours))
      @pending.present_date = Date.current
      #@pending.contract_id = 
      if  @pending.save
        redirect_to root_url
        flash[:danger] = "Thank you.  Your Contract is being Processed."
      else
        redirect_to new_pending_url   #reverse these once index is up
        flash[:danger] = "We are experiencing technical dificulties. Please try again"
      end 
  end 


end
