class PopulateContentLists < ActiveRecord::Migration[5.2]
  def change
    ContentList.create([
      { name: 'bookshelf' },
      { name: 'new' },
      { name: 'issued' },
      { name: 'expired' },
      { id: 20, name: 'search' },
      { id: 30, name: 'browse' },
    ])
  end
end
