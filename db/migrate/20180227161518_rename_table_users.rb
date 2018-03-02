class RenameTableUsers < ActiveRecord::Migration[5.1]
  def change
  	rename_column :users, :name, :email
  	change_column :users, :email, :string
  	change_column :users, :password, :string
  end
end
