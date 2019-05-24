class PopulateDaisyFormats < ActiveRecord::Migration[5.2]
  def change
    DaisyFormat.create([
      { format: 'Daisy 2.02' },
      { format: 'ANSI/NISO Z39.86-2005' },
      { format: 'PDTB2' },
    ])
  end
end
