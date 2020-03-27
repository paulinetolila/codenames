class Game < ApplicationRecord
  validates :color, presence: true
  serialize :wordlist, Array
  # serialize :colors, Array
end
