class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :url
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
