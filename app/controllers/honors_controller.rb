class HonorsController < ApplicationController

  def index
  	@honors= Honor.all
    @courses=Course.all
  end
  
  def new
  	@honor = Honor.new 
  end

  def create
 
  @honor = Honor.new(params.require(:honor).permit(:contract_id,:uid,:course_id, :prof_email, :semester, :year, :grade, :dates))
  @honor.dates = DateTime.now 
  	if  @honor.save
  		redirect_to honor_url(@honor)
  	else
  		redirect_to message_honors_path
  	end 
 end 
 def show
  	@honor = Honor.find(params[:id])
  end

   def edit
     @honor = Honor.find(params[:id])
  end

  def update
     @honor = Honor.find(params[:id])
     if @honor.update(params.require(:honor).permit(:course_id, :semester, :grade, :prof_email))
          redirect_to index_search_list_url(@honor)
    else
         redirect_to index_search_list_url
     end
  end
end
