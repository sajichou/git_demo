class AddUserIdToCours < ActiveRecord::Migration[5.1]
  def change
    add_column :cours, :user_id, :integer
  end
end
