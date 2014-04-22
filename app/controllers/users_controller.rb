class UsersController < ApplicationController
  # before_action :set_user, only: [:index,:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  def index 
    @users = User.all
  end

  def show
    @user = User.find(set_user)
  end# Loads: app/views/products/show.html.erb

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to action: :user
    else
      render "new"
    end

  end# Loads: app/views/products/new.html.erb

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:first_name, :last_name, :password, :email, :city, :address)
    end
end
