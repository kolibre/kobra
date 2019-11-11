class ChangeColumnTypeInUsers < ActiveRecord::Migration[5.2]
  def up
    change_column_default :users, :terms_accepted, nil
    change_column_default :users, :log, nil
    change_column :users, :terms_accepted, :boolean, :default => false
    change_column :users, :log, :boolean, :default => false
  end

  def down
    change_column_default :users, :terms_accepted, nil
    change_column_default :users, :log, nil
    change_column :users, :terms_accepted, :integer, :default => 0
    change_column :users, :log, :integer, :default => 1
  end
end
