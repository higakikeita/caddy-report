class ReportsController < ApplicationController
  def index
    @report = Report.all
  end
  def new
    @report = Report.new
  end
  def create
    @report = Report.new(report_params)
    
    @report.save
    binding.pry
    redirect_to root_path
  end
  private
  def report_params
  params.require(:report).permit(:name,:bags,:registered_at).merge(user_id: current_user.id)
  end
end
