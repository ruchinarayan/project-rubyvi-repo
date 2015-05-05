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
    #pdf = WickedPdf.new.pdf_from_html_file('/home/vagrant/workspace/project-rubyvi-repo/app/views/contracts/index.html.erb')
    #pdf = render_to_string pdf: "some_file_name", template: "app/views/contracts/index.html.erb", encoding: "UTF-8"
    pdf = render_to_string :pdf => "/home/vagrant/workspace/project-rubyvi-repo/app/views/contracts/index.html.erb"
    # respond_to do |format|
    #   format.html
    #   format.pdf do
    #     #@example_text = "some text"
    #     render :pdf => "file_name"#,
    #              #:template => '/home/vagrant/workspace/project-rubyvi-repo/app/views/contracts/index.html.erb',
    #              #:template => '/app/views/contracts/index.html.erb',
    #              #:layout => 'pdf',
    #              #:footer => {
    #               #  :center => "Center",
    #                # :left => "Left",
    #                 #:right => "Right"
    #              #}
    #   end
    # end
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