class UploadController < ApplicationController
	 def index
  end
  def uploadFile
    post = DataFile.save(params[:upload])
    create(params[:upload])
    flash[:success] = "File has been uploaded successfully"
    redirect_to edit_pending(pending)
  end

  def upload_params
    params.require(:task).permit(:name, :location)
  end

  def create(upload)
	@datafile = DataFile.new
	@datafile.name = upload.original_filename
	directory = "http://localhost:3000/data/"
    @datafile.location = File.join(directory, @datafile.name)
    @datafile.contract_id = contract.id
	@datafile.save

  end
end
