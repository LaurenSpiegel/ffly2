
Rails.application.routes.draw do
  get '/' => 'locations#index'
  get '/locations/:id' => 'locations#show'
  post '/location_create' => 'locations#create'
  get '/gyms' => 'gyms#index' 
  get '/gyms/:id' => 'gyms#show'
  post '/gym_create' => 'gyms#create'
  get '/gyms/:id/rating' => 'ratings#new'
  post '/post_rating' => 'ratings#create'
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  
end
