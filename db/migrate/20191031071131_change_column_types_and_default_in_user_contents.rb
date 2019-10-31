class ChangeColumnTypesAndDefaultInUserContents < ActiveRecord::Migration[5.2]
  def up
    change_column_default :user_contents, :returned, nil
    change_column :user_contents, :return, :boolean, :default => false
    change_column :user_contents, :returned, :boolean, :default => false
  end

  def down
    change_column_default :user_contents, :return, nil
    change_column_default :user_contents, :returned, nil
    change_column :user_contents, :return, :integer
    change_column :user_contents, :returned, :integer, :default => 0
  end
end
