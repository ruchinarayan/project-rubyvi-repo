class UsersController < ApplicationController
  #Global = @user.email

  before_action :logged_in_user, only: [:show]
  before_action :correct_user,   only: [:show]

  def show
    @user = User.find(params[:id])
    @students = Student.all 
    @honors =Honor.all
    @count=0 
    @students.each do|student| 
     if student.status=="faild" then 
      @count=@count+1
      end 
    end 
    @activecount =0
    @students.each do|student| 
    if student.status!="fail" then
    @honors.each do |honor| 
     if honor.uid==student.UID then 
      @activecount = @activecount+1
      end
     end
    end
   end
  end

  def showSearch
    @user = User.find(params[:id])
    @pendings= Pending.Keyword_search (params[:search]) # going to Keyword_search method in Pending model class
    @honors = Honor.Keyword_search (params[:search])
    @students=Student.Keyword_search (params[:search])
    @count=0 
    @students.each do|student| 
     if student.status=="failed" then 
      @count=@count+1
      end 
    end 
    @activecount =0
    @students.each do|student| 
    if student.status!="fail" then
    @honors.each do |honor| 
     if honor.uid==student.UID then 
      @activecount = @activecount+1
      end
     end
    end
   end
  end


  def new
    @user = User.new
    redirect_to login_path
  end

  
  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
    #  flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end


  private

  def user_params
    params.require(:user).permit(:name, 
                                 :email,
                                 :password,
                                 :password_confirmation)
  end

  # Before filters

  # Confirms a logged-in user.
  def logged_in_user
    unless logged_in?
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end

  # Confirms the correct user.
  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless current_user?(@user)
  end


  def search
    q = params[:search]
    @pendingConts = Pending.search(contract_id: q).result 
    @honorConts = Honor.search(contract_id: q).result
    redirect_to show_url
  end

end
