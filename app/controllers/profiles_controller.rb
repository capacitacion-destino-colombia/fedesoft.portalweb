class ProfilesController < ApplicationController
    def index
        @profiles=Profile.all
        render json: @profiles, status: :ok
    end
    def create
      to_insert = params.permit(:name, :rank, :credits, :stars, :pickups, :picture, :medal, :course_validation, :colector_validation, :deliveries, :total_recicled, :total_delivered, :creation_date)
        @profile = Profile.create(to_insert)
        course = Course.find(1)
        @profile = Profile.create(to_insert)
        @profile.course = course
        @profile.save
        render json: @profile, status: :ok
    end
    def show
        @profile = Profile.find(params[:id])
        render json: @profile, status: :ok
    end

end
