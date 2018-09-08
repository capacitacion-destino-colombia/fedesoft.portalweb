class ColectorsController < ApplicationController
    def index
         @colectors=Colector.all
        render json: @colectors, status: :ok
    end
    def create
      to_insert = params.permit(:name, :lastname, :email, :course_approved, :validation, :date_inscription)
        @colectors = Colector.create(to_insert)
        render json: @colectors, status: :ok
    end
    def show
      @colectors = Colector.find(params[:id])
      render json: @colectors, status: :ok
  end

end
