class CreateLeaveTypes < ActiveRecord::Migration
  def change
    create_table :leave_types do |t|
      t.string :title
      t.boolean :paid

      t.timestamps
    end
  end
end
