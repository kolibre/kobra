class CreateQuestionQuestionTexts < ActiveRecord::Migration[5.2]
  def change
    create_table :question_question_texts do |t|
      t.references :question, foreign_key: true
      t.references :question_text, foreign_key: true

      t.timestamps
    end
  end
end
