class CreateDaisyFormats < ActiveRecord::Migration[5.2]
  def change
    create_table :daisy_formats do |t|
      t.text :format, null: false

      t.timestamps
    end
  end
end
