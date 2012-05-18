Unifloor::Application.routes.draw do

  namespace :users do resources :products end

  namespace :users do resources :categories end

  devise_for :users

  resources :messages

  resources :associates
  namespace :users do
    resources :orders
    resources :customers
    resources :employees
    resources :admins
    resources :representatives
    root :to => 'dashboards#index'
  end
  match "/produtos" => "pages#products"
  match "/acessorios" => "pages#accessories"
  match "/contato" => "pages#contact"
  match "/unifloor" => "pages#unifloor"
  
  root :to => 'pages#home'
end
