class ReportsController < ApplicationController
  def index
    @report = Report.all
  end
  def new
    
  end
end
