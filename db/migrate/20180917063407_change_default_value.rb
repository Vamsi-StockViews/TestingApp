class ChangeDefaultValue < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :created_at, :string, :null => false, :default => Time.now
    change_column :users, :updated_at, :string, :null => false, :default => Time.now
  end
end
