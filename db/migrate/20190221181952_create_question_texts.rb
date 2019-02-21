class CreateQuestionTexts < ActiveRecord::Migration[5.2]
  def change
    create_table :question_texts do |t|
      t.references :language, foreign_key: true
      t.integer :text, null: false

      t.timestamps
    end
  end
end
