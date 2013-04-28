class AddAttendingColumnToInstancesTable < ActiveRecord::Migration
  def change
  	add_column :instances, :attending, :boolean, default: false
  end
end
