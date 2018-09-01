class ColectorsController < ApplicationController
    def index
         @colectors=Colector.all
        render json: @colectors, status: :ok
      end

end
