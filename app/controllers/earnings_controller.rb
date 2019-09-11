class EarningsController < ApplicationController
  
  def index
    @class_report = Class_report.sum(:earnings)
  end
  
 
  
end
