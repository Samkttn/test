class UserController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  before_action :verify_user, only: [:show]

  def index
  end

  def new
  end

  def edit
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(last_name: params[:last_name], first_name: params[:first_name], description: params[:description])
      redirect_to root_path
    else
      redirect_to edit_user_path
    end
  end

  def destroy
  end

private

  def verify_user
    unless current_user == User.find(params[:id])
      redirect_to root_path
  end
  end

end
