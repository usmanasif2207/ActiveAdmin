class DelUser < ActiveRecord::Migration[7.0]
  def up
    remove_column :products, :userId
  end
end
