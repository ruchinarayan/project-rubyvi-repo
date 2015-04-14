class ContractsController < ApplicationController

	def index
		#grab all contracts
		@contracts = Contract.all
	end

	def new
  		@contract = Contract.new 
  	end
  
	def create
  		@contract = Contract.new(params.require(:contract).permit(:contract_identity, :email, :contractor_name, :uuid, :contractor_phone, :course, :section, :credit_hours, :semester, :year, :instructor, :instructor_email ))
  		if  @contract.save
  			redirect_to contracts_url
  		else
  			redirect_to new_contracts   #reverse these once index is up
  		end 
 	end 

 	def show
  	@contract = Contract.find(params[:id])
	end

  	def edit
  	@contract = Contract.find(params[:id])
	end

  	def update
  		@contract = Contract.find(params[:id])
  		if @contract.update(params.require( :contract).permit(:contract_identity, :email, :contractor_name, :uuid, :contractor_phone, :course, :section, :credit_hours, :semester, :year, :instructor, :instructor_email))
  			redirect_to contracts_url(@contract)
		else
			redirect_to contracts_url
		end
  	end

end