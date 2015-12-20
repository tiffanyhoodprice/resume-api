class ExperiencesController < ApplicationController

  def index
    @experiences = Experience.all
  end

   def create
    @experiences = Experience.new( start_date: params[:start_date],
      end_date: params[:end_date], 
      job_title: params[:job_title],
      company_name: params[:company_name],
      student_id: params[:student_id])
      if @experiences.save
        redirect_to "/students/#{@student.id}"
      else
        render json: @student.errors.full_messages
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
    redirect_to "/students/#{@student.id}"
  else
    render json: @student.errors.full_messages
  end
​
  def destroy
    @experience = Experience.find(params[:id])
    @experience.destroy
    redirect_to "/students"
  end

end
