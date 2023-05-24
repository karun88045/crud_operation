class ApplicationController < ActionController::Base

  before_action :authenticate_user!

  
  # before_action :print_hello

  # after_action :print_hello

  # private

  # def print_hello
  # 	puts "Hello World, This is using befor actoion"
  # end

  # def print_hello
  # 	puts "Hello World, This is using after actoion"
  # end
end
