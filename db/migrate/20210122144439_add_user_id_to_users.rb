class AddUserIdToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :user_Id, :string
  end
end
