class UsersController < ApplicationController
  def show
    @current_user= User.find_by_id( params[:id])
    render 'show'
  end

  def new

  end

  def create
    user = User.create(get_params)

    if user.valid?
      session[:user_id] = user.id

      return redirect_to '/login'
    end

    flash[:errors] = user.errors.full_messages

    return redirect_to '/users/new'
  end

  private
    def get_params
      params.require(:user_form).permit(:name, :email, :password)
    end


end
