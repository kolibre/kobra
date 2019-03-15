class CreateQuestionInputs < ActiveRecord::Migration[5.2]
  def change
    create_table :question_inputs do |t|
      t.references :question, foreign_key: true
      t.integer :allow_multiple_selections, default: 0
      t.text :text_numeric, default: nil
      t.text :text_alphanumeric, default: nil
      t.text :audio, default: nil
      t.text :default_value, default: nil

      t.timestamps
    end
  end
end
