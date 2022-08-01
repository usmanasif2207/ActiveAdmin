class DelUserId < ActiveRecord::Migration[7.0]
  def up
    remove_column :users, :userId
  end
end
