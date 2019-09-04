class AddWorkingToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :working, :boolean, :default => false
    add_column :users, :working_at, :string, :default => "Student"
  end
end
