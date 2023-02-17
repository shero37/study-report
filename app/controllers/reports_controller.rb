class ReportsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def new
    @report = Report.new
    @student = Student.find(params[:student_id])
  end

  def create
    @student = Student.find(params[:student_id])
    @report = @student.reports.new(report_params)
    if @report.save
      redirect_to student_path(@student.id)
    else
      render :new
    end
  end

  private

  def report_params
    params.require(:report).permit(:month_id, :day_id, :hour, :transportation_expense, :content).merge(student_id: @student.id)
  end
  
end
