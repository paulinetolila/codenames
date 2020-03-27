# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'random-word'

Word.destroy_all
Game.destroy_all

puts 'Creating 10 words...'
Word.create(value: 'montagne')
Word.create(value: 'mer')
Word.create(value: 'plage')
Word.create(value: 'Mont Blanc')
Word.create(value: 'rocher')
Word.create(value: 'arbre')
Word.create(value: 'ciel')
Word.create(value: 'terre')
Word.create(value: 'eau')
Word.create(value: 'feu')
puts 'Creating 20 words...'
Word.create(value: 'étoile')
Word.create(value: 'lune')
Word.create(value: 'nuit')
Word.create(value: 'jour')
Word.create(value: 'saturne')
Word.create(value: 'pluton')
Word.create(value: 'chien')
Word.create(value: 'chat')
Word.create(value: 'requin')
Word.create(value: 'canard')
puts 'Creating 30 words...'
Word.create(value: 'loup')
Word.create(value: 'ours')
Word.create(value: 'araignée')
Word.create(value: 'pâtes')
Word.create(value: 'riz')
Word.create(value: 'tomate')
Word.create(value: 'camembert')
Word.create(value: 'vin')
Word.create(value: 'bière')
Word.create(value: 'pain')
puts 'Creating 40 words...'
Word.create(value: 'oignon')
Word.create(value: 'fromage')
Word.create(value: 'lait')
Word.create(value: 'vache')
Word.create(value: 'pingouin')
Word.create(value: 'kangourou')
Word.create(value: 'neige')
Word.create(value: 'pluie')
Word.create(value: 'soleil')
Word.create(value: 'train')
puts 'Creating 50 words...'
Word.create(value: 'voiture')
Word.create(value: 'circuit')
Word.create(value: 'course')
Word.create(value: 'champion')
Word.create(value: 'ange')
Word.create(value: 'alien')
Word.create(value: 'démon')
Word.create(value: 'fantôme')
Word.create(value: 'esprit')
Word.create(value: 'pied')
puts 'Creating 60 words...'
Word.create(value: 'chausson')
Word.create(value: 'pyjama')
Word.create(value: 'robe')
Word.create(value: 'princesse')
Word.create(value: 'roi')
Word.create(value: 'révolution')
Word.create(value: 'prison')
Word.create(value: 'château')
Word.create(value: 'ferme')
Word.create(value: 'cuisine')
puts 'Creating 70 words...'
Word.create(value: 'salon')
Word.create(value: 'chambre')
Word.create(value: 'table')
Word.create(value: 'chaise')
Word.create(value: 'téléphone')
Word.create(value: 'ordinateur')
Word.create(value: 'television')
Word.create(value: 'savon')
Word.create(value: 'douche')
Word.create(value: 'parfum')
puts 'Creating 80 words...'
Word.create(value: 'dent')
Word.create(value: 'nez')
Word.create(value: 'oeil')
Word.create(value: 'tête')
Word.create(value: 'ventre')
Word.create(value: 'main')
Word.create(value: 'livre')
Word.create(value: 'cinéma')
Word.create(value: 'roman')
Word.create(value: 'film')
puts 'Creating 90 words...'
Word.create(value: 'Batman')
Word.create(value: 'Astérix')
Word.create(value: 'Brésil')
Word.create(value: 'Pocahontas')
Word.create(value: 'Thailand')
Word.create(value: 'Allemagne')
Word.create(value: 'France')
Word.create(value: 'Italie')
Word.create(value: 'Espagne')
Word.create(value: 'Etats Unis')
puts 'Creating 100 words...'
Word.create(value: 'Angleterre')
Word.create(value: 'Russie')
Word.create(value: 'Chine')
Word.create(value: 'Australie')
Word.create(value: 'Mexique')
Word.create(value: 'Portugal')
Word.create(value: 'Grèce')
Word.create(value: 'guerre')
Word.create(value: 'espion')
Word.create(value: 'chanson')
puts 'Creating 110 words...'
Word.create(value: 'bataille')
Word.create(value: 'chevalier')
Word.create(value: 'samouraï')
Word.create(value: 'ninja')
Word.create(value: 'mafia')
Word.create(value: 'parrain')
Word.create(value: 'fée')
Word.create(value: 'vampire')
Word.create(value: 'sorcière')
Word.create(value: 'conquête')
puts 'Creating 120 words...'
Word.create(value: 'rock')
Word.create(value: 'musique')
Word.create(value: 'violon')
Word.create(value: 'guitare')
Word.create(value: 'rap')
Word.create(value: 'variété')
Word.create(value: 'opéra')
Word.create(value: 'ballet')
Word.create(value: 'danse')
Word.create(value: 'hip-hop')
puts 'Creating 130 words...'
Word.create(value: 'piano')
Word.create(value: 'Chopin')
Word.create(value: 'Mozart')
Word.create(value: 'Molière')
Word.create(value: 'Shakespeare')
Word.create(value: 'Tolstoï')
Word.create(value: 'Lénine')
Word.create(value: 'Hitler')
Word.create(value: 'Che Guevara')
Word.create(value: 'Churchill')
puts 'Words finished!'

puts 'Creating games'
100.times do
  redorblue = ["bleue", "rouge"].sample
  game = Game.new(color: redorblue)
  # game.colors = ["jaune", "jaune", "jaune", "jaune", "jaune", "jaune", "jaune", "jaune", "jaune", "jaune",
  #   "jaune", "jaune", "jaune", "jaune", "jaune", "jaune", "jaune", "jaune", "jaune", "jaune", "jaune", "jaune", "jaune", "jaune", "jaune"]
  # game.wordlist = []
  game.wordlist = Word.all.sample(25)
  # words.each do |word|
  #   game.wordlist << word.value
  # end
  game.wordlist.delete('-')
  if game.color == "bleue"
    game.wordlist[8].color = "bleu"
    game.wordlist[9].color = "bleu"
    game.wordlist[10].color = "bleu"
    game.wordlist[11].color = "bleu"
    game.wordlist[12].color = "bleu"
    game.wordlist[13].color = "bleu"
    game.wordlist[14].color = "bleu"
    game.wordlist[15].color = "bleu"
    game.wordlist[16].color = "bleu"
    game.wordlist[17].color = "rouge"
    game.wordlist[18].color = "rouge"
    game.wordlist[19].color = "rouge"
    game.wordlist[20].color = "rouge"
    game.wordlist[21].color = "rouge"
    game.wordlist[22].color = "rouge"
    game.wordlist[23].color = "rouge"
    game.wordlist[24].color = "rouge"
  else
    game.wordlist[8].color = "rouge"
    game.wordlist[9].color = "rouge"
    game.wordlist[10].color = "rouge"
    game.wordlist[11].color = "rouge"
    game.wordlist[12].color = "rouge"
    game.wordlist[13].color = "rouge"
    game.wordlist[14].color = "rouge"
    game.wordlist[15].color = "rouge"
    game.wordlist[16].color = "rouge"
    game.wordlist[17].color = "bleu"
    game.wordlist[18].color = "bleu"
    game.wordlist[19].color = "bleu"
    game.wordlist[20].color = "bleu"
    game.wordlist[21].color = "bleu"
    game.wordlist[22].color = "bleu"
    game.wordlist[23].color = "bleu"
    game.wordlist[24].color = "bleu"
  end
  game.wordlist[0].color = "noir"
  game.wordlist[1].color = "jaune"
  game.wordlist[2].color = "jaune"
  game.wordlist[3].color = "jaune"
  game.wordlist[4].color = "jaune"
  game.wordlist[5].color = "jaune"
  game.wordlist[6].color = "jaune"
  game.wordlist[7].color = "jaune"
  game.wordlist.shuffle!
  game.save
end
puts 'Games finished!'
