class CreateAnnouncementTexts < ActiveRecord::Migration[5.2]
  def change
    create_table :announcement_texts do |t|
      t.references :announcement, foreign_key: true
      t.text :text
      t.references :language, foreign_key: true

      t.timestamps
    end
  end
end
