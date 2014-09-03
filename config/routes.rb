Rails.application.routes.draw do
  # match('/', {via: :get, to: 'recipes#index'})
  resources :recipes
  resources :tags


  # match('/', {via: :get, to: 'tags#index' })
  # match('tags', {via: :get, to: 'tags#index' })
  # match('tags', {via: :post, to: 'tags#create' })
  # match('tags/:id', {via: :get, to: 'tags#show' })
  # match('tags/:id/edit', {via: :get, to: 'tags#edit' })
  # match('tags/:id', {via: [:patch, :put], to: 'tags#update' })
  # match('tags/:id', {via: :delete, to: 'tags#delete' })

  match('recipes/:id/tags', {via: :post, to: 'recipestags#create'})
  match('recipes/:id/tags/:tag_id', {via: :delete, to: 'recipestags#delete'})
end
