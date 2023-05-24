class TestsController < ApplicationController
  def index
    @tests = Test.all
  end

  def show
  end

  def new
    @test = Test.new
  end

  def create
    @test= Test.create(test_params)
    redirect_to tests_path
  end

  def edit
    @test = Test.find(params[:id])
  end

  def update
    @test = Test.find(params[:id])
    @test.update(test_params)
    # @test_update = Test.update(
    # name: params[:test][:name],
    # email: params[:test][:email],
    # password: params[:test][:password],
    # mobile: params[:test][:mobile])
    redirect_to tests_path
  end

  def destroy
    @test = Test.find(params[:id])
    @test.destroy
    redirect_to tests_path
  end

  private

  def test_params
    params.require(:test).permit(:name,:email,:password,:mobile)
  end

  # def set_params
  # end
end