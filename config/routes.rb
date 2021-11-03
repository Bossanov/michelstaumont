Rails.application.routes.draw do
  resources :commandes
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
  resources :themes


  root to: 'pages#home'
  get 'pages/legal'
  get 'pages/actualites'
  get 'pages/admin'
  get 'pages/client'
  get 'pages/gallery'
  get 'pages/choixoptions'
  get 'pages/panier'
  get 'supprimer_article', to: 'articles#supprimer_article'
  get 'supprimer_actualite', to: 'actualites#supprimer_actualite'
  get 'thanks', to: 'charges#thanks', as: 'thanks'
  get 'effacer_message', to: 'messages#effacer_message'
  get 'supprimer_article_panier', to: 'paniers#supprimer_article_panier'
  get 'commande_envoyee', to: 'commandes#commande_envoyee'
  get 'effacer_theme', to: 'themes#effacer_theme'
  get 'effacer_utilisateur', to: 'profiles#effacer_utilisateur'



end
