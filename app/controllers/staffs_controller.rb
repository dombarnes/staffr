class StaffsController < ApplicationController
  before_action :set_staff, only: [:show, :edit, :update, :destroy]

  def index
    @staffs = Staff.all
  end

  def all
    @staffs = Staff.all_staff.all
  end

  def show
    @holidays = Holiday.where(:staff_id => @staff.id)
    # @holiday_allowance = HolidayEntitlement.find(params[:id])
    @holiday_used = @holiday_allowance
  end

  def new
    @staff = Staff.new
  end

  def edit
  end

  def create
    @staff = Staff.new(staff_params)
    
    respond_to do |format|
      if @staff.save
        format.html { redirect_to @staff, notice: 'Staff was successfully created.' }
        # TODO Now create a new holiday entitlement
        format.json { render action: 'show', status: :created, location: @staff }
      else
        format.html { render action: 'new' }
        format.json { render json: @staff.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @staff.update(staff_params)
        format.html { redirect_to @staff, notice: 'Staff was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @staff.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @staff.destroy
    respond_to do |format|
      format.html { redirect_to staffs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_staff
      @staff = Staff.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def staff_params
      params.require(:staff).permit(:first_name, :middle_name, :last_name, :address_line_1, :address_line_2, :city, :county, :post_code, :ni, :dob, :start_date, :end_date, :tel_number, :mobile_number, :next_of_kin, :next_of_kin_tel, :sort_code, :account_number, :bank)
    end
end
