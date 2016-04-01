class UsersController < ApplicationController
	def index
  @users = User.all
  @users.all.each do |user|
    puts user.attributes
    puts user.name
  end
  end
def create
  @user = User.new user_params
  if @user.save
    redirect_to users_path, notice: 'Usuario registrado con exito'
  else
    render :new
  end
end

def new 
	render json: params
end

private
def user_params
    params.require(:user).permit(:age, :name, :email)
end
end
