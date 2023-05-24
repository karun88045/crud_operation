class EmployeesController < ApplicationController
  # before_action :authenticate_user!
  def index
    @emp1 = Employee.all
    @doc1 = Document.all

  end

  def show
  	@emp2 = Employee.find(params[:id])
  end

  def new
    @emp3 = Employee.new
  end
  def create
    @emp7 = Employee.create(
    name: params[:employee][:name],
    email: params[:employee][:email],
    password: params[:employee][:password],
    phone: params[:employee][:phone],
    address: params[:employee][:address])
    redirect_to root_path
  end

  def edit
    @emp4 = Employee.find(params[:id])
  end

  def update
    @emp5 = Employee.find(params[:id])
    @emp5.update(
    name: params[:employee][:name],
    email: params[:employee][:email],
    password: params[:employee][:password],
    phone: params[:employee][:phone],
    address: params[:employee][:address])
    redirect_to root_path
  end

  def destroy
    @emp6 = Employee.find(params[:id])
    if @emp6.destroy
      redirect_to root_path
    else
      # message
    end
  end



  # private

  # def employee_params
  #   params.require(:employee).permit(:name,:email,:password,:phone,:address)
  # end
end
