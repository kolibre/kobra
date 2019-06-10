class CreateQuestionInputs < ActiveRecord::Migration[5.2]
  def change
    create_table :question_inputs do |t|
      t.references :question, foreign_key: true
      t.integer :allow_multiple_selections, default: nil
      t.integer :text_numeric, default: nil
      t.integer :text_alphanumeric, default: nil
      t.integer :audio, default: nil
      t.text :default_value

      t.timestamps
    end
  end
end
