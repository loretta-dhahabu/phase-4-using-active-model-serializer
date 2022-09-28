Rails.application.routes.draw do
  resources :movies, only: [:index, :show]

  #displays just one movie summary
  get '/movies/:id/summary', to: 'movies#summary'

  #render full collection of movies
  get '/movie_summaries', to: 'movies#summaries'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
