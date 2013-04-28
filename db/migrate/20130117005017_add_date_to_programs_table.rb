class AddDateToProgramsTable < ActiveRecord::Migration
  def change
  	remove_column :programs, :date
  end
end
