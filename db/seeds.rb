# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = Category.create([{ name: 'BOOK' }, { name: 'MAGAZINE' }, 
    { name: 'NEWSPAPER' }, { name: 'OTHER' }])
question_types = QuestionType.create([{ type_name: 'multipleChoiceQuestion' }, 
    { type_name: 'inputQuestion' }, { type_name: 'choice' }, { type_name: 'contentListRef' }, 
    { type_name: 'label' }])
states = State.create([{ state: 'START'}, { state: 'PAUSE' }, 
    { state: 'RESUME' }, { state: 'FINISH' }])
content_lists = ContentList.create([{ name: 'bookshelf' }, { name: 'new' },
    { name: 'issued' }, { name: 'expired' }, { name: 'search' },
    { name: 'browse' }])
languages = Language.create([{ lang: 'en' }, { lang: 'sv'}, { lang: 'fi' }])
daisy_formats = DaisyFormat.create([{ format: 'Daisy 2.02' },
    { format: 'ANSI/NISO Z39.86-2005' }, { format: 'PDTB2' }])
