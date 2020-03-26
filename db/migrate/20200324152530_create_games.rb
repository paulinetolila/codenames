class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :color
      t.string :wordlist, array: true
      t.string :colors, array: true
      t.timestamps
    end
    add_index :games, :wordlist, using: 'gin'
    add_index :games, :colors, using: 'gin'
  end
end
