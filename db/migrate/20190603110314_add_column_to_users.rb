class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :age, :integer
    add_column :users, :profession, :string
    add_column :users, :nationality, :string
    add_column :users, :weight, :float
    add_column :users, :belt, :string
    add_column :users, :phone, :string
    add_column :users, :subscription, :float
    add_column :users, :admin_rights, :integer
  end
end
