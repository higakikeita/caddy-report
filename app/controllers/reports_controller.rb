class ReportsController < ApplicationController
  def index
    @reports = Report.all
    
  end
  def new
    @report = Report.new
  end
  def create
    @report = Report.new(report_params)
    
    @report.save
    
    redirect_to reports_path
  end
  def search
    @reports = Report.search(params[:search]).order(registered_at: :asc)
    
  end
  private
  def report_params
  params.require(:report).permit(:name,:bags,:registered_at).merge(user_id: current_user.id)
  end
end
