class PendingsController < ApplicationController
  def index
  	@pendings= Pending.all
    @honors= Honor.all
    @Professors=Professor.all
    @students=Student.all
  end

  def search
  	@pendingConts = Pending.search params[:search]
  end
  def show
    @pending = Pending.find(params[:id])
  end
  
  def edit
    @pending = Pending.find(params[:id])
    
  end
  def update
    @pending = Pending.find(params[:id])
    if @pending.update(params.require(:pending).permit(:contract_id,:uid,:firstName,:lastName,:email,:phoneNumber,:semester,:profName,
      :profEmail,:course_id,:year,:present_date,:grade,:pdf))
      @honor=Honor.new(:contract_id => @pending.contract_id,:uid => @pending.uid,:course_id => @pending.course_id,
      :prof_email => @pending.profEmail,:semester => @pending.semester,:year => @pending.year,:grade => @pending.grade,:pdf => '',:dates => @pending.present_date)
    @professor=Professor.new(:profName => @pending.profName,:profEmail => @pending.profEmail)
    @student=Student.new(:UID => @pending.uid,:firstName => @pending.firstName,:lastName => @pending.lastName,:email => @pending.email,:phoneNumber => @pending.phoneNumber, :status => "active")
    if !@honor.save and !@professor.save and !@student.save
      redirect_to pendings_list_url
    else
     @pending.destroy
     redirect_to pendings_list_url
    end
    else
      redirect_to pendings_list_url
    end
  end
  def destroy    
    @pending = Pending.find(params[:id])
    @pending.destroy
  	redirect_to pendings_list_url
  end
end
#  contract_id  :integer
#  uid          :string
#  firstName    :string
#  lastName     :string
#  email        :string
#  phoneNumber  :string
#  semester     :string
#  profName     :string
#  profEmail    :string
#  course_id    :string
#  year         :integer
#  present_date :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  grade        :string
#  pdf          :binary