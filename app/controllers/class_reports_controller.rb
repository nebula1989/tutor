class ClassReportsController < ApplicationController
  before_action :set_class_report, only: [:show, :edit, :update, :destroy]

  # GET /class_reports
  # GET /class_reports.json
  def index
    
    @dates_otions = []
    12.times do |i| 
      date = Date.today.beginning_of_year + i.month
      @dates_otions << [date, date]
    end
    @class_reports = current_user.class_reports.order('date_of_class DESC').page params[:page]
    @sum_all_earnings = current_user.class_reports.pluck(:earnings).sum
    if params[:month].present?
      @class_reports = current_user.class_reports.order('date_of_class DESC').where(date_of_class: Date.parse(params[:month]).beginning_of_month ..  Date.parse(params[:month]).end_of_month).page params[:page]
      @sum_earnings = current_user.class_reports.where(date_of_class: Date.parse(params[:month]).beginning_of_month ..  Date.parse(params[:month]).end_of_month).pluck(:earnings).sum
    end
  end

  # GET /class_reports/1
  # GET /class_reports/1.json
  def show
  end

  # GET /class_reports/new
  def new
    @class_report = ClassReport.new
  end

  # GET /class_reports/1/edit
  def edit
  end

  # POST /class_reports
  # POST /class_reports.json
  def create
    @class_report = ClassReport.new(class_report_params)
    @class_report.user = current_user
    

    respond_to do |format|
      if @class_report.save
        format.html { redirect_to @class_report, notice: 'Class report was successfully created.' }
        format.json { render :show, status: :created, location: @class_report }
      else
        format.html { render :new }
        format.json { render json: @class_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /class_reports/1
  # PATCH/PUT /class_reports/1.json
  def update
    respond_to do |format|
      if @class_report.update(class_report_params)
        format.html { redirect_to @class_report, notice: 'Class report was successfully updated.' }
        format.json { render :show, status: :ok, location: @class_report }
      else
        format.html { render :edit }
        format.json { render json: @class_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /class_reports/1
  # DELETE /class_reports/1.json
  def destroy
    @class_report.destroy
    respond_to do |format|
      format.html { redirect_to class_reports_url, notice: 'Class report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_class_report
      @class_report = ClassReport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def class_report_params
      params.fetch(:class_report, {}).permit(:student_name, :student_level, :user_id, :earnings, :class_notes, :date_of_class)
    end
end
