class SkillsController < ApplicationController

  def index
    @skills = Skill.all
  end

  def show
    @skill = Skill.find(params[:id])
  end

  def create
    @skill = Skill.new(name: params[:name], student_id: params[:student_id])
    if @skill.save
      redirect_to "/skills/#{@skill.id}"
    else
      render json: @skill.errors.full_messages
    end
  end

  def update
    @skill = Skill.find(params[:id])
    @skill.attributes(name: params[:name], student_id: params[:student_id])
    if @skill.save
      redirect_to "/skills/#{@skill.id}"
    else
      render json: @skill.errors.full_messages
    end
  end

  def destroy
    @skill = Skill.find(params[:id]).destroy
    redirect_to "/skills"
  end
end
