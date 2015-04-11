class PendingsController < ApplicationController
  def index
  	@pendings= Pending.all
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
