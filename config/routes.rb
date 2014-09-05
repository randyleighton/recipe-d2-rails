Rails.application.routes.draw do
  resources :recipes do
    resources :ingredients
  end
  resources :ingredients do
    resources :recipes
  end
  resources :tags
end
