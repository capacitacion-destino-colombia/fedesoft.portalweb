class DonationsController < ApplicationController
    def index
        @donations=Donation.all
        render json: @donations, status: :ok
    end
    def create
      to_insert = params.permit(:name, :value, :account, :id_perfil)
        @donation = Donation.create(to_insert)
        render json: @donation, status: :ok
    end

end 