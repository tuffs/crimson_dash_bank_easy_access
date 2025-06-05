class AddFieldsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :admin, :boolean
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :username, :string
    add_index :users, :username, unique: true
  end
end
