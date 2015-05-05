class StudentController < ApplicationController

  def index
    @students=Student.all
    @user = User.find(params[:id])
    @honors= Honor.all
    respond_to do |format|
    format.html
    format.csv { send_data(@students.to_csv) }
   # format.xls
  end
end

 def export
   # @Honors = Honor.find(params[:id])
    @Honors = Honor.all
    respond_to do |format|
    format.html
    format.csv { send_data(@Honors.to_csv) }
 end
end


 def search
    @student = Student.where(UID: params[:search] )
    @pendings= Honor.where(uid: params[:search])
    #@student = Student.Keyword_search (params[:search])  
  end
 

  def failStu
  	@failstud = Student.all 

  end

  def studentIfo
	@students = Student.all
  end

  def IfoRevise
  @students = Student.find(params[:id])
  end

def new
  	@student =Student.new

  end
def edit
@student = Student.find(params[:id])
end

#def show
# 	@student = Student.find(params[:id])
#end

def show
      if params[:search]    
     @pendings = Honor.where(uid: params[:search])
     @student = Student.where(UID: params[:search] ).take
     @valchk = Checklist.find_by(uid: @student.UID)
    else
      if params[:id] != nil
      @student = Student.find(params[:id])
      @valchk = Checklist.find_by(uid: @student.UID)
    end
      @pendings= Honor.all
    end

end

def notes
  @student = Student.find(params[:id])
  end 
 
def update
@student = Student.find(params[:id])
if @student.update(params.require(:student).permit(:UID, :firstName, :lastName, :email, :phoneNumber, :status, :notes))
  redirect_to session[:search_results]
    else
      redirect_to message_student_path
  end
end

  def saveChecklist
        #To add an entry
        @saveGradChk = Checklist.new

  end

    def submitChecklist
       #To submit the entered data
       @checklist = Checklist.find_by(uid: params[:saveGradChk][:uid])
      if @checklist
       #@checklist.update(params.require(:saveGradChk).permit(:uid, :unhp, :honexpju, :honexpse, :honthese, :gpa))
       @checklist.unhp = params[:saveGradChk][:unhp]
       @checklist.honexpju = params[:saveGradChk][:honexpju]
       @checklist.honexpse = params[:saveGradChk][:honexpse]
       @checklist.honthese = params[:saveGradChk][:honthese]
       @checklist.gpa = params[:saveGradChk][:gpa]
      else
       @saveGradChk = Checklist.new(params.require(:saveGradChk).permit(:uid, :unhp, :honexpju, :honexpse, :honthese, :gpa))
       @saveGradChk.save
     end
         redirect_to index_search_list_path        

  end

#    def submitChecklist
#            @saveGradChk = Checklist.new(params.require(:saveGradChk).permit(:uid, :unhp, :honexpju, :honexpse, :honthese, :gpa))
#           if @saveGradChk.save
#              redirect_to index_search_list_path
#           else
#              redirect_to index_search_list_path
#          end
#  end


end
