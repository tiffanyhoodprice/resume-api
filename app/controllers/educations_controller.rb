class EducationsController < ApplicationController

  def index
    @educations = Education.all
  end

  def create
    @educations = Education.new( start_date: params[:start_date],
      end_date: params[:end_date], 
      degree: params[:degree],
      phone: params[:phone],degree
      university_name: params[:university_name],
      details: params[:details],
      student_id: params[:student_id]
      if @educations.save
        redirect_to "/students/#{@student.id}"
      else
        render json: ""
      end
    end

    def show
      @educations = Education.find(params[:id])
    end

  end