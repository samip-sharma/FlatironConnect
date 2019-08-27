class CreateUserMods < ActiveRecord::Migration[5.2]
  def change
    create_table :user_mods do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :mod, foreign_key: true
      t.boolean :accepted, default:false

      t.timestamps
    end
  end
end
