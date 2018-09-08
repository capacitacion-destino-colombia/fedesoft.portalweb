class UsersController < ApplicationController
   def index
       @user=User.all
       render json: @user, status: :ok
   end
  
   def create
      #puts "AAA"
      #puts params.require(:email)
      @user = User.create(users_params)
      render json: @user, status: :ok
   end
  
  
  def show
       @user = User.find(params[:id])
       render json: @user, status: :ok
   end
  
  private
  def users_params
    params.permit(:name, :last_name, :email, :approved_course, :collector_validate, :date_registration, :phone)
  end
  
  
end
