Rails.application.routes.draw do

  resources :posts
  root "posts#home"
  get 'busca', to: "posts#busca"
end

