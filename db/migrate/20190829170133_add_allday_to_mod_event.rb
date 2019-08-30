class AddAlldayToModEvent < ActiveRecord::Migration[5.2]
  def change
    add_column :mod_events, :allday, :boolean, :default => false
  end
end
