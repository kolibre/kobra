class CreateContents < ActiveRecord::Migration[5.2]
  def change
    create_table :contents do |t|
      t.references :category, foreign_key: true
      t.references :daisy_format, foreign_key: true
      t.text :title, null: false

      t.timestamps
    end
  end
end
