class SessionsController < ApplicationController
  def new
   @user=User.new
  end
  
  def create
user=User.find_by(email: params[:session][:email])
	if user && user.authenticate(params[:session][:password])
		session[:user_id] = user.id 
		flash[:success]="Welcome to rails simple authenticate"
		redirect_to root_path
	else
		flash[:danger]="Email or password is incorrect"
		render 'new'
	end
	
  end
  
  def destroy
	session[:user_id]=nil
	flash[:success]="Good Bye"
	redirect_to root_path
  end
end
