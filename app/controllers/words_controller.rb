class WordsController < ApplicationController
  before_action :set_words, only: [:index, :espions]
  def index
  end

  def espions
  end

  def set_words
    @words = Word.all.sample(25)
  end
end
