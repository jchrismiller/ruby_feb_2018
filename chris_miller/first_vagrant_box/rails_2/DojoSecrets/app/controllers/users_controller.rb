class UsersController < ApplicationController
  def show
    @current_user= User.find_by_id( params[:id])
    render 'show'
  end

  def new

  end

  def create
  	@user = User.create( name: params[:name], email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation])
  	if @user.valid?
  		redirect_to '/users'
  	end
  	flash[:errors] = @user.errors.full_messages
  	redirect_to :back
  end

end
