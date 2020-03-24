class Word < ApplicationRecord
  validates :value, presence: true
end
