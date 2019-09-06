class CreateTwoUsersMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :two_users_messages do |t|
      t.belongs_to :two_users_chat, foreign_key: true
      t.string :text
      t.timestamps
    end
  end
end
