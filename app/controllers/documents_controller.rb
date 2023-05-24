class DocumentsController < ApplicationController
  before_action :set_document, only: [:show, :edit, :update, :destroy]

  def index
    @documents = Document.all
  end

  def new
    @document = Document.new
    @employees = Employee.all
  end

  def create
    @document = Document.create(document_params)
    # document.employees.id = params[:employee_id]
    redirect_to documents_path
    	
    # if (@document = Document.create(document_params))
	#   redirect_to documents_path	
    # else
	#   render :new
    # end
  end

  def show
  end

  def destroy
    if @document.destroy
	redirect_to documents_path
    else
	# message
    end
  end

  def edit
  end
  def contact
  end

  def update
    @document = Document.find(params[:id])
    if @document.update(document_params)
	  redirect_to documents_path
    end
  end

  private

  def set_document
    @document = Document.find(params[:id])
  end

  def document_params
    params.require(:document).permit(:name, :doc_type, :employee_id)
  end
end
