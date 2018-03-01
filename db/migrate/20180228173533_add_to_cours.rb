class AddToCours < ActiveRecord::Migration[5.1]
  def change
  	add_column :cours, :el1, :fixnum
  	add_column :cours, :el2, :fixnum
  	add_column :cours, :el3, :fixnum
  end
end
