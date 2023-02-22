class ReportsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_student, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_report, only: [:edit, :update, :destroy]

  def new
    @report = Report.new  
  end

  def create
    @report = @student.reports.new(report_params)
    if @report.save
      redirect_to student_path(@student.id)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @report.update(report_params)
      redirect_to controller: :students, action: :show, id: @student.id
    else
      render :edit
    end
  end

  def destroy
    @report.destroy
    redirect_to controller: :students, action: :show, id: @student.id
  end

  private

  def report_params
    params.require(:report).permit(:month_id, :day_id, :hour, :transportation_expense, :content).merge(student_id: @student.id)
  end
  
  def set_student
    @student = Student.find(params[:student_id])
  end

  def set_report
    @report = Report.find(params[:id])
  end

end
