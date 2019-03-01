class CreateQuestionTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :question_types do |t|
      t.text :name, null: false

      t.timestamps
    end
  end
end
