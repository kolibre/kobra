class SetDefaultStateIdInUserContents < ActiveRecord::Migration[5.2]
  def up
    change_column_default :user_contents, :state_id, 1
  end

  def down
    change_column_default :user_contents, :return, nil
  end
end
