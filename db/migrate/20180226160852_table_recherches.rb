class TableRecherches < ActiveRecord::Migration[5.1]
  def change
  	create_table :recherches
  	add_column :recherches, :latitude, :float
  	add_column :recherches, :longitude, :float
  end
end
