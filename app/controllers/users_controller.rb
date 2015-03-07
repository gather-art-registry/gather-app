class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  # before_filter :authenticate_user!#, except: [:index, :show]

  respond_to :html

  def index
    @users = User.all
    respond_with(@users)
  end

  def show
    @registry = @user.registries.first
    respond_with(@user)
  end

  def new
    @user = User.new
    respond_with(@user)
  end

  def edit
  end

  def create
    @user = User.new(user_params)
    @user.save
    respond_with(@user)
  end

  def update
    @user.update(user_params)
    respond_with(@user)
  end

  def destroy
    @user.destroy
    respond_with(@user)
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:first_name, :last_name, :first_name_2, :last_name_2, :username, :email, :email_2, :phone, :phone_2, :address, :city, :state, :zip)
    end
end
