Rails.application.routes.draw do
  resources :actualites
  devise_for :users

  resources :profiles do
    resources :paniers
  end
  resources :articles
  resources :messages
  resources :choices
  resources :charges
  resources :actualites


  root to: 'pages#home'
  get 'pages/actualites'
  get 'pages/admin'
  get 'pages/client'
  get 'pages/test'
  get 'pages/gallery'
  get 'pages/choixoptions'
  get 'pages/panier'
  get 'supprimer_article', to: 'articles#supprimer_article'
  get 'effacer_message', to: 'messages#effacer_message'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
