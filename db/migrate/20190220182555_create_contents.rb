class CreateContents < ActiveRecord::Migration[5.2]
  def change
    create_table :contents do |t|
      t.references :category, foreign_key: true
      t.references :daisyformat, foreign_key: true
      t.text :title
      t.numeric :date

      t.timestamps
    end
  end
end
