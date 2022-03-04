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

def fetch(url)
  uri = URI(url)
  response = Net::HTTP.get(uri)
  JSON.parse(response)
end

pokemon = fetch("https://pokeapi.co/api/v2/pokemon?limit=151") # 898

pokemon["results"].each do |result|
  pokemon_json = fetch(result["url"])
  species_json = fetch(pokemon_json["species"]["url"])

  Pokemon.create(
    number: pokemon_json["id"],
    name:   pokemon_json["name"].capitalize,
    sprite: pokemon_json["sprites"]["front_default"]
  )

  pokemon_json["types"].each do |type|
    type_name = type["type"]["name"].capitalize
    PokemonType.create(
      pokemon: Pokemon.find_by(number: pokemon_json["id"]),
      type:    Type.find_or_create_by(name: type_name)
    )
  end

  species_json["egg_groups"].each do |egg_group|
    PokemonEggGroup.create(
      pokemon:   Pokemon.find_by(number: pokemon_json["id"]),
      egg_group: EggGroup.find_or_create_by(name: egg_group["name"].capitalize)
    )
  end
end
