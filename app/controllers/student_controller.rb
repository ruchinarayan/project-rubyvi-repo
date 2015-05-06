class StudentController < ApplicationController
@user
before_action :logged_in_user, only: [:show, :edit, :update, :index,:new ]
before_action :correct_user,   only: [ :edit, :update,:index, :new]

  def index

    # @current_user ||= User.find_by(id: session[:user_id])
    @students=Student.all
    # @user = User.find(params[:id])
     @user ||= User.find_by(id: session[:user_id])
    @honors= Honor.all
    respond_to do |format|
    format.html
    format.csv { send_data(@students.to_csv) }
   # format.xls
  end
end

def deacList
    @students=Student.all
    @user ||= User.find_by(id: session[:user_id])
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
  # @current_user ||= User.find_by(id: session[:user_id])
  # @user = User.find(params[:id])
   @user ||= User.find_by(id: session[:user_id])
@student = Student.find(params[:id])
end

#def show
# 	@student = Student.find(params[:id])
#end

def show
   @user ||= User.find_by(id: session[:user_id])
      if params[:search]    
     @pendings = Honor.where(uid: params[:search])
     @student = Student.where(UID: params[:search] ).take
     # @valchk = Checklist.find_by(uid: @student.UID)
    
    if Checklist.find_by(uid: @student.UID) != nil
      @valchk = Checklist.find_by(uid: @student.UID)
    else
  # @valchk.uid = @student.UID
  @valchk = Checklist.create(uid: @student.UID,unhp: 'f',honexpju: 'f',honexpse: 'f',honthese: 'f',gpa: 'f')
 
    end


    else
      if params[:id] != nil
      @student = Student.find(params[:id])
     # @valchk = Checklist.find_by(uid: @student.UID)

      if Checklist.find_by(uid: @student.UID) != nil
        @valchk = Checklist.find_by(uid: @student.UID)
       else
        #@valchk.uid = @student.UID
       @valchk = Checklist.create(uid: @student.UID,unhp: 'f',honexpju: 'f',honexpse: 'f',honthese: 'f',gpa: 'f')
 
      end
    end
      @pendings= Honor.all
    end

end
def notes
 # @user = User.find(params[:id])
  @user ||= User.find_by(id: session[:user_id])
  @student = Student.find(params[:id])
  end 
 
def update
@student = Student.find(params[:id])
if @student.update(params.require(:student).permit(:UID, :firstName, :lastName, :email, :phoneNumber, :status, :notes))
  flash[:danger] = "successfully stored"
  redirect_to session[:search_results]

    else
      flash[:danger] = "Some error with input data. Try again!!"
      redirect_to session[:search_results]
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
#              requiredirect_to index_search_list_path
#           else
#              redirect_to index_search_list_path
#          end
#  end
# Confirms a logged-in user.
  def logged_in_user
    unless logged_in?
      flash[:danger] = "Please log in."
      redirect_to login_url(@user)
    end
  end


 def correct_user
    # @user = User.find(params[:id])
    @user ||= User.find_by(id: session[:user_id])
    redirect_to(root_url) unless current_user?(@user)
  end

end
 
