class DateUsersTable < ActiveRecord::Migration
  def change
  	remove_column :users, :date
  end
end
