class ProfilesController < ApplicationController
    def index
        @profiles=Profile.all
        render json: @profiles, status: :ok
    end

end
