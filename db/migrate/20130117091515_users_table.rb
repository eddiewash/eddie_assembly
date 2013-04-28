class UsersTable < ActiveRecord::Migration
  def change
  	remove_column :users, :date
  end
end
