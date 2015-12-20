class EducationsController < ApplicationController

  def index
    @educations = Education.all
  end

  def create
    @education = Education.new( start_date: params[:start_date],
      end_date: params[:end_date], 
      degree: params[:degree],
      phone: params[:phone],
      university_name: params[:university_name],
      details: params[:details],
      student_id: params[:student_id])
    if @education.save
      redirect_to "/students/#{@student.id}"
    else
      render json: @education.errors.full_messages
    end
  end

  def update
    @education = Student.find(params[:id])
    @education.attributes(start_date: params[:start_date],
      end_date: params[:end_date], 
      degree: params[:degree],
      phone: params[:phone],
      university_name: params[:university_name],
      details: params[:details],
      student_id: params[:student_id)
    if @education.save
      redirect_to "/students/#{@student.id}"
    else
      render json: @education.errors.full_messages
    end
  end

  def show
    @education = Education.find(params[:id])
  end

  def destroy
    @education = Education.find(params[:id])
    @education.destroy
    redirect_to "/students"
  end

end