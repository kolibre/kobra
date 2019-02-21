class CreateQuestionInputs < ActiveRecord::Migration[5.2]
  def change
    create_table :question_inputs do |t|
      t.references :question, foreign_key: true
      t.integer :allow_multiple_selections
      t.integer :text_numeric
      t.integer :text_alphanumeric
      t.integer :audio
      t.text :default_value

      t.timestamps
    end
  end
end
