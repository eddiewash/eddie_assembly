class AddCheckinsTable < ActiveRecord::Migration
  def change
  	create_table :checkins do |t|
  		t.belongs_to :user
  		t.string :name
  		t.boolean :complete, default: false, null: false
  		t.timestamps
  	end
  end
end
