class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def create
    @student = Student.new( first_name: params[:first_name],
                            last_name: params[:last_name], 
                            email: params[:email],
                            phone: params[:phone],
                            short_bio: params[:short_bio],
                            linkedin_url: params[:linkedin_url],
                            twitter_url: params[:twitter_url],
                            blog_url: params[:blog_url],
                            online_resume: params[:online_resume],
                            github_url: params[:github_url],
                            photo_url: params[:photo_url],
                            cap_name: params[:cap_name],
                            cap_desc: params[:cap_desc],
                            cap_url: params[:cap_url],
                            cap_ss: params[:cap_ss])
    if @student.save
      redirect_to "/students/#{@student.id}"
    else
      render json: @student.errors.full_messages
    end
  end

  def show
    @student = Student.find(params[:id])
  end

end
