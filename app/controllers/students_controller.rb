class StudentsController < ApplicationController

def index
  if(params[:name])
  student = Student.where("first_name =? or last_name =?", params[:name].capitalize, params[:name].capitalize)
  render json: students
  else
  students = Student.all
  render json: student
  end
end

  def show
    student = Student.find(params[:id])
    render json: student
  end
  
end
