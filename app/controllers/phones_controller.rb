class PhonesController < ApplicationController
  def index
    @user=User.find(params[:user_id])
    @phones=@user.phones
    render json: @phones, status: :ok
  end
   def create
      #puts "AAA"
      #puts params.require(:email)
     @user = User.find(params[:user_id])
     @phone = Phone.create(users_params)
     @phone.user = @user
     @phone.update(:user => @user)
     
      render json: @phone, status: :ok
   end
  
  
  def show
       @phone = Phone.find(params[:id])
       render json: @phone, status: :ok
   end
  
  
  private
  def users_params
    params.permit(:type_phone, :number_phone, :active_phone, :date_create )
  end
  
end
