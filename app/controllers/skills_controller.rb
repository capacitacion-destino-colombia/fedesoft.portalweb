class SkillsController < ApplicationController
  def index
    @rol=Rol.find(params[:rol_id])
    @skills=@rol.skills
    render json: @skills, status: :ok
  end
  def create
    @skills= Skill.create(params.permit(:resource, :description))
    @rol=Rol.find(params[:rol_id])
    @rol.skills << @skills
    render json: @skills, status: :ok
  end
  
   def show
       @skills = Rol.find(params[:id])
       render json: @rol, status: :ok
  end
  
  def get_all
       @skills = Skill.all
       render json: @skills, status: :ok
   end

end