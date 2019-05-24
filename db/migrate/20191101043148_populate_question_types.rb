class PopulateQuestionTypes < ActiveRecord::Migration[5.2]
  def change
    QuestionType.create([
      { name: 'multipleChoiceQuestion' },
      { name: 'inputQuestion' },
      { name: 'choice' },
      { name: 'contentListRef' },
      { name: 'label' },
    ])
  end
end
