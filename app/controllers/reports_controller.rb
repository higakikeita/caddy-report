class ReportsController < ApplicationController
  def index
    
    @q=Report.ransack(params[:q])
    @reports=@q.result(distinct: true)
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
    @q=Report.ransack(search_params)
    @reports=@q.result(distinct: true)
    
  end
  private
  def report_params
  params.require(:report).permit(:name,:bags,:registered_at).merge(user_id: current_user.id)
  end

  def search_params
    params.require(:q).permit!
  end
end
