class ReportsController < ApplicationController
  def index
    @report = Report.new
    @student = Student.find(params[:student_id])
  end

  
end
