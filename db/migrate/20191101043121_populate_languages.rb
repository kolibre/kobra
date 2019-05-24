class PopulateLanguages < ActiveRecord::Migration[5.2]
  def change
    Language.create([
      { lang: 'en' },
      { lang: 'sv' },
      { lang: 'fi' },
    ])
  end
end
