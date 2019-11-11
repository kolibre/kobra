class PopulateStates < ActiveRecord::Migration[5.2]
  def change
    State.create([
      { state: 'NULL'},
      { state: 'START'},
      { state: 'PAUSE' },
      { state: 'RESUME' },
      { state: 'FINISH' },
  ])
  end
end
