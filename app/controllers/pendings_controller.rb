class PendingsController < ApplicationController

  before_action :logged_in_user, only: [:show]
  before_action :correct_user,   only: [:show]

  	#@pendings= Pending.all
  	def index
  		@user = User.find(params[:id])
  			if params[:search] #if value exists
  			@pendings= Pending.Keyword_search (params[:search]) # going to Keyword_search method in Penging model class
    		else
    		@pendings= Pending.all
    		end

    end


  def show
  	@user = User.find(params[:id])
  end

  def search
  	@pendingConts = Pending.search params[:search]
  end
  def destroy
  	Pending.destroy(params[:id])
  	redirect_to pendings_list_url
  end

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

end
