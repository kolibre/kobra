# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = Category.create([{ name: 'BOOK' }, { name: 'MAGAZINE' }, 
    { name: 'NEWSPAPER' }, { name: 'OTHER' }])
question_types = QuestionType.create([{ type: 'multipleChoiceQuestion' }, 
    { type: 'inputQuestion' }, { type: 'choice' }, { type: 'contentListRef' }, 
    { type: 'label' }])
states = State.create([{ state: 'START'}, { state: 'PAUSE' }, 
    { state: 'RESUME' }, { state: 'FINISH' }])
