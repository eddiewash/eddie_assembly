class AddInstancesTable < ActiveRecord::Migration
  def change
  	create_table :instances do |t|
  		t.integer :student_id
  		t.integer :program_id
  		t.timestamps
  	end
  end

end
