Rails.application.routes.draw do
  # get '/other' => 'other_services#index'
  # get '/foods' => 'blue_foods#index'
  # get '/necessities' => 'bear_necessities#index'
  # get '/stripes' => 'golden_stripes#index'
  # get '/beds' => 'bear_beds#index'
  resources :bear_beds
  resources :bear_necessities
  resources :blue_foods
  resources :golden_stripes
  get '/other_services' => 'other_services#index'
  get '/' => 'users#index', as: :root
end
