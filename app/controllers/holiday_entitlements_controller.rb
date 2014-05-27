class HolidayEntitlementsController < ApplicationController
  before_action :set_holiday_entitlement, only: [:show, :edit, :update, :destroy]

  def index
    @holiday_entitlements = HolidayEntitlement.all
  end

  def show
  end

  def new
    @holiday_entitlement = HolidayEntitlement.new
  end

  def edit
  end

  def create
    @holiday_entitlement = HolidayEntitlement.new(holiday_entitlement_params)

    respond_to do |format|
      if @holiday_entitlement.save
        format.html { redirect_to @holiday_entitlement, notice: 'Holiday entitlement was successfully created.' }
        format.json { render action: 'show', status: :created, location: @holiday_entitlement }
      else
        format.html { render action: 'new' }
        format.json { render json: @holiday_entitlement.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @holiday_entitlement.update(holiday_entitlement_params)
        format.html { redirect_to @holiday_entitlement, notice: 'Holiday entitlement was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @holiday_entitlement.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @holiday_entitlement.destroy
    respond_to do |format|
      format.html { redirect_to holiday_entitlements_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_holiday_entitlement
      @holiday_entitlement = HolidayEntitlement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def holiday_entitlement_params
      params.require(:holiday_entitlement).permit(:staff_id, :holiday_year_start, :holiday_year_end, :holiday_days)
    end
end
