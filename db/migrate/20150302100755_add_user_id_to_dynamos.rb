class AddUserIdToDynamos < ActiveRecord::Migration
  def change
    add_column :dynamos, :user_id, :integer
  end
end
