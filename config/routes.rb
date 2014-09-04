Rails.application.routes.draw do
  # match('/', {via: :get, to: 'recipes#index'})
  resources :recipes

  resources :tags

  resources :ingredients

  # match('recipes/:recipe_id/tags', {via: :post, to: 'recipestags#create'})
  # match('recipes/:id/tags/:tag_id', {via: :delete, to: 'recipestags#delete'})
end
