class FixUsersTable < ActiveRecord::Migration
  def change
  	remove_column :users, :passwrod_hash
  	add_column :users, :password_hash, :string
  end
end
