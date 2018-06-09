Rails.application.routes.draw do
  get 'aanvraag/new'

  post 'aanvraag', to: 'aanvraag#new'
  post 'aanvraag/1', to: 'aanvraag#adresb'
  post 'aanvraag/2', to: 'aanvraag#adresc'
  post 'aanvraag/3', to: 'aanvraag#inventarisatie'
  post 'aanvraag/4', to: 'aanvraag#datum'
  post 'aanvraag/5', to: 'aanvraag#typewoning'
  post 'aanvraag/6', to: 'aanvraag#typewoningnaar'


  get 'aanvraag', to: 'aanvraag#new'
  get 'aanvraag/1', to: 'aanvraag#adresb'
  get 'aanvraag/2', to: 'aanvraag#adresc'
  get 'aanvraag/3', to: 'aanvraag#inventarisatie'
  get 'aanvraag/4', to: 'aanvraag#datum'
  get 'aanvraag/5', to: 'aanvraag#typewoning'
  get 'aanvraag/6', to: 'aanvraag#typewoningnaar'


  get 'pages/index'
  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
