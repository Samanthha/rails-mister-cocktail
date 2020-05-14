Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/cocktails', to: 'cocktails#index'
  get '/cocktails/new', to: 'cocktails#new', as: :new_cocktail
  get '/cocktails/:id', to: 'cocktails#show', as: :cocktail
  post '/cocktails/', to: 'cocktails#create'

  resources :cocktails do
    resources :doses, only: [ :new, :create ]
  end
end
