class ReportsController < ApplicationController
  before_action :set_ransack
  def index
    @four_bags=Report.where(bags:"4").order(created_at: "DESC").limit(10)
    @three_bags=Report.where(bags:"3").order(created_at: "DESC").limit(10)
    @two_bags=Report.where(bags:"2").order(created_at: "DESC").limit(10)
    @one_bags=Report.where(bags:"1").order(created_at: "DESC").limit(10)
    
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
    params.require(:q).permit(:bags,:name_cont,:registered_at)
  end
  def set_ransack
    @q        = Report.ransack(params[:q])
    
  end
end
