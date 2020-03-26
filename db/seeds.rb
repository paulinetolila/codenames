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
  game.colors = ["jaune", "jaune", "jaune", "jaune", "jaune", "jaune", "jaune", "jaune", "jaune", "jaune",
    "jaune", "jaune", "jaune", "jaune", "jaune", "jaune", "jaune", "jaune", "jaune", "jaune", "jaune", "jaune", "jaune", "jaune", "jaune"]
  game.wordlist = {}
  words = Word.all.sample(25)
  words.each do |word|
    game.wordlist << word.value
  end
  game.wordlist.delete('-')
  if game.color == "bleue"
    game.colors[8] = "bleu"
    game.colors[9] = "bleu"
    game.colors[10] = "bleu"
    game.colors[11] = "bleu"
    game.colors[12] = "bleu"
    game.colors[13] = "bleu"
    game.colors[14] = "bleu"
    game.colors[15] = "bleu"
    game.colors[16] = "bleu"
    game.colors[17] = "rouge"
    game.colors[18] = "rouge"
    game.colors[19] = "rouge"
    game.colors[20] = "rouge"
    game.colors[21] = "rouge"
    game.colors[22] = "rouge"
    game.colors[23] = "rouge"
    game.colors[24] = "rouge"
  else
    game.colors[8] = "rouge"
    game.colors[9] = "rouge"
    game.colors[10] = "rouge"
    game.colors[11] = "rouge"
    game.colors[12] = "rouge"
    game.colors[13] = "rouge"
    game.colors[14] = "rouge"
    game.colors[15] = "rouge"
    game.colors[16] = "rouge"
    game.colors[17] = "bleu"
    game.colors[18] = "bleu"
    game.colors[19] = "bleu"
    game.colors[20] = "bleu"
    game.colors[21] = "bleu"
    game.colors[22] = "bleu"
    game.colors[23] = "bleu"
    game.colors[24] = "bleu"
  end
  game.colors[0] = "noir"
  game.colors[1] = "jaune"
  game.colors[2] = "jaune"
  game.colors[3] = "jaune"
  game.colors[4] = "jaune"
  game.colors[5] = "jaune"
  game.colors[6] = "jaune"
  game.colors[7] = "jaune"
  game.colors.shuffle!
  game.save
end
puts 'Games finished!'
