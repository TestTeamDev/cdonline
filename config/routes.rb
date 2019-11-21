Rails.application.routes.draw do
  root 'enduser/tops#top'

  namespace :enduser do
    devise_for :endusers
    resources :tops, only: [:top]
    get 'tops/top', to: 'tops#top'
    resources :cds, only: [:index, :show]
    get 'search', to: 'cds#search'
    resources :endusers, only: [:show, :edit, :leave, :update, :destroy] do
    get 'leave', to: 'endusers#leave', on: :member
    end
    resources :cart_items, only: [:index, :create, :destroy, :update]
    resources :delivery_addresses, only: [:new, :create, :destroy]
    resources :orders ,only: [:index, :show, :create]
    get 'order_confirmations/thanks', to: 'order_confirmations#thanks'
    resources :order_confirmations, only: [:index, :thanks]
    resources :inquires, only: [:form, :create]
    get 'inquires/form', to: 'inquires#form'
    resources :reviews, only: [:create, :destroy, :edit, :update]
    resources :favorites, only: [:create, :destroy]
  end

  namespace :endusers do
    devise_for :endusers, :controller => {

    }
  end


  namespace :admins do
    devise_for :admins, :controller => {

    }
  end

  namespace :admin do
    resources :endusers, only: [:index, :show, :edit, :update, :destroy] do
    get 'leave', to: 'endusers#leave', on: :member
    get 'orders', to: 'endusers#order', on: :member
    end
    resources :cds
    get 'search', to: 'cds#search'
    resources :orders ,only: [:index, :show, :update]
    resources :genres, only: [:new, :destroy, :index, :create]
    resources :labels, only: [:create, :destroy, :index]
    resources :artists, only: [:create, :destroy, :index]
    resources :arrival_cds, only: [:new, :index, :create]
    resources :reviews, only: [:destroy, :edit, :update]
    resources :inquires, only: [:index, :show, :update]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
