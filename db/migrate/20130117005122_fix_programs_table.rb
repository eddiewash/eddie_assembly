class FixProgramsTable < ActiveRecord::Migration
  def change
  	add_column :programs, :date, :date
  end
end
