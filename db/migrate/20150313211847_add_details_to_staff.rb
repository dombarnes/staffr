class AddDetailsToStaff < ActiveRecord::Migration
  def change
  	  	add_column :staffs, :job_title, :string, null: false, default: ''
  	  	add_column :staffs, :location, :string, null: false, default: ''
  	  	add_attachment :staffs, :profile_photo
  end
end
