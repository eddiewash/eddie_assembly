class KillTable < ActiveRecord::Migration
  def change
  	drop_table :checkins
  end
end
