class RemoveTable < ActiveRecord::Migration
  def change
  	drop_table :checkin
  end
end
