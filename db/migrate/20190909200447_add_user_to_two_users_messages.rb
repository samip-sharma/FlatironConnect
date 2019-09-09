class AddUserToTwoUsersMessages < ActiveRecord::Migration[5.2]
  def change
    add_column :two_users_messages, :sender, :string
  end
end
