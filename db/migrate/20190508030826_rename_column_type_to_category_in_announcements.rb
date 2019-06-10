class RenameColumnTypeToCategoryInAnnouncements < ActiveRecord::Migration[5.2]
  def change
    rename_column :announcements, :type, :category
  end
end
