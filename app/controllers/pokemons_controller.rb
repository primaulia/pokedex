require 'open-uri'

class PokemonsController < ApplicationController
  def index
    url = "https://pokeapi.co/api/v2/pokemon?limit=100&offset=200"
    raw_json = open(url).read
    json = JSON.parse(raw_json)
    @pokemons = json["results"]
  end

  def show
    @pokemon_name = params[:name]
    url = "https://pokeapi.co/api/v2/pokemon/#{@pokemon_name}"
    raw_json = open(url).read
    json = JSON.parse(raw_json)
    @artwork = json["sprites"]["other"]["official-artwork"]["front_default"]
  end
end
