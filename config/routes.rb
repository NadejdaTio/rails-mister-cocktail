Rails.application.routes.draw do
  resources :events
  resources :concert_halls
  resources :bands
  mount Attachinary::Engine => "/attachinary"
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
