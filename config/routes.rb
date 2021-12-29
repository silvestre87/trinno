Rails.application.routes.draw do
  root 'principal#index'

  namespace :geral do
    resources :veiculo_pessoas
    resources :veiculos
    resources :pessoas
    resources :nome_carros
    resources :marcas
    resources :clients
  end

  devise_for :users
  resources :users
  get    'sign_in'   => 'sessions#new'
  post   'sign_in'   => 'sessions#create'
  delete 'sign_out'  => 'sessions#destroy'
end