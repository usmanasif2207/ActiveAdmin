class AddUserIdToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :userId, :integer
  end
end
