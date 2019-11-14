Rails.application.routes.draw do
  root 'enduser/tops#top'

  namespace :enduser do
    devise_for :endusers
    resources :tops, only: [:top]
    get 'tops/top', to: 'tops#top'
    resources :cds, only: [:index, :show]
    resources :endusers, only: [:show, :edit, :leave, :update, :destroy]
    get 'endusers/leave', to: 'endusers#leave'
    resources :cart_items, only: [:show, :create, :destroy, :update]
    resources :deliverly_addresses, only: [:new, :create, :destroy]
    resources :order ,only: [:index, :show, :create]
    resources :order_confirmations, only: [:show, :thanks]
    get 'order_confirmations/thanks', to: 'order_confirmations#thanks'
    resources :inquires, only: [:form, :create]
    get 'inquires/form', to: 'inquires#form'
    resources :reviews, only: [:create, :destroy, :edit, :update]
    resources :favorites, only: [:create, :destroy]
  end



  namespace :admins do
    devise_for :admins, :controller => {

    }
    resources :endusers, only: [:index, :show, :edit, :leave, :order, :update, :destroy]
    get 'endusers/leave', to: 'endusers#leave'
    get 'enduser/:id/orders', to: 'endusers#order'
    resources :cds
    resources :order ,only: [:index, :show, :update]
    resources :genres, only: [:new, :destroy, :index, :create]
    resources :labels, only: [:create, :destroy, :index]
    resources :artists, only: [:create, :destroy, :index]
    resources :arrival_cds, only: [:new, :index, :create]
    resources :reviews, only: [:destroy, :edit, :update]
    resources :inquires, only: [:index, :show, :update]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
