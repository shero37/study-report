class StudentsController < ApplicationController
  def index
    @students = Student.order("created_at DESC")
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to root_path
    else
      render :new
    end
  end
<<<<<<< Updated upstream
  
=======

>>>>>>> Stashed changes
  def show
    @student = Student.find(params[:id])
  end

  private

  def student_params
    params.require(:student).permit(:student, :grade_id, :month_id).merge(user_id: current_user.id)
  end
end
