Rails.application.routes.draw do
  resources :bands
  root to: 'bands#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
