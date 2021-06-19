class AddDefaultValueToIsManager < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :is_manager, :boolean, default: false
  end
end