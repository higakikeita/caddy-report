class ReportsController < ApplicationController
  def index
    @report = Report.all
  end
  def new
    @report = Report.new
  end
end
