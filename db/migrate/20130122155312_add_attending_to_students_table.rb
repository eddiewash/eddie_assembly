class AddAttendingToStudentsTable < ActiveRecord::Migration
  def change
  	add_column :students, :attending, :boolean, :default => false
  	remove_column :instances, :attending
  end
end
