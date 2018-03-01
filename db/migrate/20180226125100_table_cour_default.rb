class TableCourDefault < ActiveRecord::Migration[5.1]
  def change
  	change_column :cours, :nombre_eleves, :fixNum, :default => 0
  end
end
