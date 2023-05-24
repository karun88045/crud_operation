class StaticPagesController < ApplicationController
  def index
    debug
  end

  def about

  end

  def contact
  end

  def employee
    @employees = Employee.all
  end
  def detail
    @detail = Detail.all
    @student = Student.all
  end
  def new
    @employees = Employee.new
  end
  def create
    @employees = Employee.new(name: params[:employee][:name],
    email: params[:employee][:email],
    password: params[:employee][:password],
    phone: params[:employee][:address],
    address: params[:employee][:address])
    if @employee.save
      redirect_to employee_static_pages_path
    else
      render new
    end
  end
end
