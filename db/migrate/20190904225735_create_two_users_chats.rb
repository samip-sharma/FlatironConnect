class CreateTwoUsersChats < ActiveRecord::Migration[5.2]
  def change
    create_table :two_users_chats do |t|
      t.belongs_to :follow, foreign_key: true

      t.timestamps
    end
  end
end
