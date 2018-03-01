class DefaultValuesToCours < ActiveRecord::Migration[5.1]
  def change
  	change_column_default :cours, :el1, 0
	change_column_default :cours, :el2, 0
	change_column_default :cours, :el3, 0	
  end
end
