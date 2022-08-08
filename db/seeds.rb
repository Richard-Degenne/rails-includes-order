# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

nes = Console.create(name: 'NES')
nes.games.create([
  { title: 'The Legend of Zelda' },
  { title: 'Teenage Mutant Ninja Turtles' },
  { title: 'Metroid' },
  { title: 'Super Mario Bros.' }
])

snes = Console.create(name: 'SNES')
snes.games.create([
  { title: 'F-Zero' },
  { title: 'Donkey Kong Country' },
  { title: 'The Legend of Zelda: A Link to the Past' },
  { title: 'Super Mario World' },
  { title: 'Super Metroid' }
])

ps = Console.create(name: 'PlayStation')
ps.games.create([
  { title: 'Silent Hill' },
  { title: 'Resident Evil' },
  { title: 'Gran Turismo' },
  { title: 'Crash Bandicoot' }
])


ps = Console.create(name: 'Mega Drive')
ps.games.create([
  { title: 'Sonic the Hedgehog 2' },
  { title: 'Street of Rage 2' },
  { title: 'Mortal Kombat 2' },
  { title: 'Earthworm Jim' }
])
