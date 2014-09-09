Rails.application.routes.draw do
  root to: 'recipes#index'

  resources :recipes do
    resources :ingredients
  end
  resources :ingredients do
    resources :recipes
  end
  resources :tags
end
