Rails.application.routes.draw do
  get '/' => 'users#index', as: :root
end
