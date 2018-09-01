class PhonesController < ApplicationController
  def index
    @user=User.find(params[:user_id])
    @phones=@user.phones
    render json: @phones, status: :ok
  end
end
