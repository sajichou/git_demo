class DropColumnsCours < ActiveRecord::Migration[5.1]
  def change
  	remove_column :cours, :user_id
  	remove_column :cours, :el1
  	remove_column :cours, :el2
  	remove_column :cours, :el3
  end
end
