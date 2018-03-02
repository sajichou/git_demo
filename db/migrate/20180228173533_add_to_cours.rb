class AddToCours < ActiveRecord::Migration[5.1]
  def change
  	add_column :cours, :el1, :integer
  	add_column :cours, :el2, :integer
  	add_column :cours, :el3, :integer
  end
end
