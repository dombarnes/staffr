class AddDetailsToStaff < ActiveRecord::Migration
  def change
  	  	add_column :staffs, :job_title, :string
  	  	add_column :staffs, :location, :string
  	  	add_attachment :staffs, :profile_photo
  end
end
