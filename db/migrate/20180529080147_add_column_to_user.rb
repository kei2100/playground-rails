class AddColumnToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :user_id, :string
    add_index :users, :user_id, :unique => true
  end
end
