class Admin::LeaveTypesController < ApplicationController
  before_action :set_leave_type, only: [:show, :edit, :update, :destroy]

  def index
    @leave_types = LeaveType.all
  end

  def show
    # @leave_type = leave_type.find(params[:id])
  end

  def new
    @leave_type = LeaveType.new
  end

  def edit
  end

  def create
    @leave_type = LeaveType.new(leave_type_params)

    respond_to do |format|
      if @leave_type.save
        format.html { redirect_to admin_leave_types_path, notice: 'Leave Type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @leave_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @leave_type.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @leave_type.update(leave_type_params)
        format.html { redirect_to admin_leave_types_path, notice: 'Leave Type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @leave_type.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @leave_type.destroy
    respond_to do |format|
      format.html { redirect_to admin_leave_types_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leave_type
      @leave_type = LeaveType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def leave_type_params
      params.require(:leave_type).permit(:title, :paid)
    end
end
