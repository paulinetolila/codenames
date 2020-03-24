class Game < ApplicationRecord
  validates :color, presence: true
  serialize :wordlist
end
