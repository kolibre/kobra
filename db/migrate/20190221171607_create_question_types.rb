class CreateQuestionTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :question_types do |t|
      t.string :type_name, null: false

      t.timestamps
    end
  end
end
