class CoursesController < ApplicationController
  def index
  	@courses=Course.all
  end
  def new
  	@course = Course.new 
  end
def create
  @course = Course.new(params.require(:course).permit(:course_id,:course_name))
  	if  @course.save
  		redirect_to new_honor_path
  	else
  		redirect_to message_courses_path
  	end 
 end 
end
