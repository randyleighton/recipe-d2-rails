Rails.application.routes.draw do
  match('/', {via: :get, to: 'recipes#index'})
  match('recipes', {via: :get, to: 'recipes#index'})
  match('recipes', {via: :post, to: 'recipes#create'})
  match('recipes/:id', {via: :get, to: 'recipes#show'})
  match('recipes/:id/edit', {via: :get, to: 'recipes#edit'})
  match('recipes/:id', {via: [:patch, :put], to: 'recipes#update'})
  match('recipes/:id', {via: :delete, to: 'recipes#delete'})

  match('/', {via: :get, to: 'tags#index' })
  match('tags', {via: :get, to: 'tags#index' })
  match('tags', {via: :post, to: 'tags#create' })
  match('tags/:id', {via: :get, to: 'tags#show' })
  match('tags/:id/edit', {via: :get, to: 'tags#edit' })
  match('tags/:id', {via: [:patch, :put], to: 'tags#update' })
  match('tags/:id', {via: :delete, to: 'tags#delete' })

  match('recipes/:id/tags'), {:via :post, to: 'recipes_tags#create'})
  match('recipes/:id/tags/:tag_id'), {:via :delete, to: 'recipes_tags#delete'})
end
