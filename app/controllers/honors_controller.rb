class HonorsController < ApplicationController
   def new
  	@honor = Honor.new 
  end

  def create
 
  @honor = Honor.new(params.require(:honor).permit(:contract_id,:uid,:course_id, :prof_email, :semester, :year, :grade, :dates))
 @honor.dates = DateTime.now 
  	if  @honor.save
  		redirect_to honor_url(@honor)
  	else
  		redirect_to honor_url(1)
  	end 
 end 
 def show
  	@honor = Honor.find(params[:id])
  end
end
