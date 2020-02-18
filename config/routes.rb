Rails.application.routes.draw do

  
  resources :posts do
    resources :comments
  end
  root "posts#home"
  get 'busca', to: "posts#busca"
end

