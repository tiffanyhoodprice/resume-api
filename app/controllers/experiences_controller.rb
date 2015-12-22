class ExperiencesController < ApplicationController

  def index
    @experiences = Experience.all
  end

   def create
    @experience = Experience.new( start_date: params[:start_date],
      end_date: params[:end_date], 
      job_title: params[:job_title],
      company_name: params[:company_name],
      student_id: params[:student_id])
      if @experience.save
        redirect_to "/experiences/#{@experience.id}"
      else
        render json: @experience.errors.full_messages
      end
  end

  def show
    @experience = Experience.find(params[:id])
  end
  
  def update
    @experience = Experience.find(params[:id])
    @experience.attributes(start_date: params[:start_date],
      end_date: params[:end_date], 
      job_title: params[:job_title],
      company_name: params[:company_name],
      student_id: params[:student_id])
    if @experience.save
    redirect_to "/experiences/#{@experience.id}"
    else
    render json: @experience.errors.full_messages
    end
  end

  def destroy
    @experience = Experience.find(params[:id])
    @experience.destroy
    redirect_to "/experiences"
  end

end
