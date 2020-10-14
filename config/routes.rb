Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # GET -> /
  # GET -> /pokemon_random_name

  root to: "pokemons#index"
  get ':name', to: "pokemons#show", as: "show_pokemon"
end


# params ===> url ===> query

# localhost:3000/answer?question="What you type"
# dynamic routing -- from routes.rb
# from post data