class CrunchReportsController < ApplicationController

  # GET /crunch_reports
  # GET /crunch_reports.json
  def index
    @crunch_reports = Video.where(:channel => 'Crunch Report')
  end

  # GET /crunch_reports/1
  # GET /crunch_reports/1.json
  def show
  end

  # GET /crunch_reports/new
  def new
    @crunch_report = CrunchReport.new
  end

  # GET /crunch_reports/1/edit
  def edit
  end

  # POST /crunch_reports
  # POST /crunch_reports.json
  def create
    @crunch_report = CrunchReport.new(crunch_report_params)

    respond_to do |format|
      if @crunch_report.save
        format.html { redirect_to @crunch_report, notice: 'Crunch report was successfully created.' }
        format.json { render :show, status: :created, location: @crunch_report }
      else
        format.html { render :new }
        format.json { render json: @crunch_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /crunch_reports/1
  # PATCH/PUT /crunch_reports/1.json
  def update
    respond_to do |format|
      if @crunch_report.update(crunch_report_params)
        format.html { redirect_to @crunch_report, notice: 'Crunch report was successfully updated.' }
        format.json { render :show, status: :ok, location: @crunch_report }
      else
        format.html { render :edit }
        format.json { render json: @crunch_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crunch_reports/1
  # DELETE /crunch_reports/1.json
  def destroy
    @crunch_report.destroy
    respond_to do |format|
      format.html { redirect_to crunch_reports_url, notice: 'Crunch report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_crunch_report
      @crunch_report = CrunchReport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def crunch_report_params
      params.fetch(:crunch_report, {})
    end
end
