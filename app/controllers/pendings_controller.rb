class PendingsController < ApplicationController

@user
  before_action :logged_in_user, only: [:show]
  before_action :correct_user,   only: [:show]

  	#@pendings= Pending.all
  	def index
  		if params[:users] != nil
  		@user = User.find(params[:users])
  	    end

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
    @user = User.find(params[:id])
    redirect_to(root_url) unless current_user?(@user)
  end

  def new
    @pending = Pending.new
  end

  def create
  end

end
