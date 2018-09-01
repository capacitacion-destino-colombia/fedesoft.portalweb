class RolsController < ApplicationController
  def index
       @rols=Rol.all
       render json: @rols, status: :ok
   end
   def create
       to_insert = {:description => params[:description]}
       @rol = Rol.create(to_insert)
       render json: @rol, status: :ok
   end
   def show
       @rol = Rol.find(params[:id])
       render json: @rol, status: :ok
   end
end
