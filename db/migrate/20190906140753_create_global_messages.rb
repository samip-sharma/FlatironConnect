class CreateGlobalMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :global_messages do |t|
      t.string :text
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
