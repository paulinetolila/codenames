class AddWordlistToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :wordlist, :object
  end
end
