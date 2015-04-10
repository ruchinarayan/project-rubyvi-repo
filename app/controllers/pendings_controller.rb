class PendingsController < ApplicationController
  def index
  	@pendings= Pending.all
  end
  def search
  	@pendingConts = Pending.search params[:search]
  end

end
