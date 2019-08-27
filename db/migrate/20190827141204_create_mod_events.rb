class CreateModEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :mod_events do |t|
      t.string :start
      t.string :end
      t.string :title
      t.belongs_to :mod, foreign_key: true
      t.belongs_to :user, foreign_key: true
      t.timestamps
    end
  end
end
