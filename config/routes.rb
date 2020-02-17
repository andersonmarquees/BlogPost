Rails.application.routes.draw do

  resources :comments
  resources :posts
  root "posts#home"
  get 'busca', to: "posts#busca"
end

