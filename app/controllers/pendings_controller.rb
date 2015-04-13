class PendingsController < ApplicationController
  	#@pendings= Pending.all
  	def index
  		if params[:search] #if value exists
  		@pendings= Pending.Keyword_search (params[:search]) # going to Keyword_search method in Penging model class
    else
    	@pendings= Pending.all
    end

    end


  def show
  end

  def search
  	@pendingConts = Pending.search params[:search]
  end
  def destroy
  	Pending.destroy(params[:id])
  	redirect_to pendings_list_url
  end
end
