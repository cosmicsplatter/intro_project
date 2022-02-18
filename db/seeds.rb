# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "database_cleaner"

PokemonType.destroy_all
PokemonEggGroup.destroy_all
Pokemon.destroy_all
Type.destroy_all
EggGroup.destroy_all

DatabaseCleaner.clean_with(:truncation)

require "net/http"
require "json"

pokemon_array = []
# species_array = []
# type_array = []
# egg_group_array = []

(1..151).each do |i|
  pokemon_data = "https://pokeapi.co/api/v2/pokemon/#{i}"
  uri = URI(pokemon_data)
  response = Net::HTTP.get(uri)
  pokemon_json = JSON.parse(response)
  pokemon_array.push(pokemon_json)

  # species = open("https://pokeapi.co/api/v2/pokemon-species/#{i}").read
  # json_species = JSON.parse(species)
  # species_array.push(json_species)
end

pokemon_array.each do |pokemon|
  Pokemon.create(
    pokemon_id: pokemon["id"],
    number:     pokemon["id"],
    name:       pokemon["name"],
    sprite:     pokemon["sprites"]["front_default"]
  )
end
