class CreateQuestionAudios < ActiveRecord::Migration[5.2]
  def change
    create_table :question_audios do |t|
      t.references :question_text, foreign_key: true
      t.integer :size
      t.integer :length

      t.timestamps
    end
  end
end
