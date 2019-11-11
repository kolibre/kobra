class PopulateCategories < ActiveRecord::Migration[5.2]
  def change
    Category.create([
      { name: 'BOOK' },
      { name: 'MAGAZINE' },
      { name: 'NEWSPAPER' },
      { name: 'OTHER' },
    ])
  end
end
