class ChecklistsController < ApplicationController

def edit
   @user ||= User.find_by(id: session[:user_id])
     @valchk = Checklist.find(params[:id])
end

def update
    @checklist = Checklist.find(params[:id])
     if @checklist.update(params.require(:checklist).permit(:uid, :unhp ,:honexpju, :honexpse, :honthese, :gpa))
          #redirect_to index_search_list_url(@checklist)
          redirect_to index_search_list_url(session[:user_krikk])
    else
         redirect_to index_search_list_url
     end
end

end
