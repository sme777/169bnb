Rails.application.routes.draw do
  resources :bear_beds
  resources :bear_necessities
  resources :blue_foods
  resources :golden_stripes
  get '/other_services' => 'other_services#index'
  get '/search' => 'bear_beds#search', as: :search
  get '/' => redirect('/bear_beds'), as: :root

  # authentication
  get '/login' => 'users#login', as: :get_login
  get '/signup' => 'users#signup', as: :get_signup

  post '/login' => 'users#login', as: :login
  post '/signup' => 'users#signup', as: :signup
end
