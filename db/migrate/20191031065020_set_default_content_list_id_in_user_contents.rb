class SetDefaultContentListIdInUserContents < ActiveRecord::Migration[5.2]
  def up
    change_column_default :user_contents, :content_list_id, 1
  end

  def down
    change_column_default :user_contents, :content_list_id, nil
  end
end
