Rails.application.routes.draw do

  resources :tops, only: [:top]
  get 'tops/top', to: 'tops#top'
  root :to=>'tops#top'
  resources :endusers, only: [:index, :show, :edit, :leave, :order, :update, :destroy]
  get 'enduser/:id/orders', to: 'endusers#order'
  get 'endusers/leave', to: 'endusers#leave'
  resources :cds
  resources :cart_items, only: [:show, :create, :destroy, :update]
  resources :deliverly_addresses, only: [:new, :create, :destroy]
  resources :order_confirmations, only: [:show, :thanks]
  get 'order_confirmations/thanks', to: 'order_confirmations#thanks'
  resources :order ,only: [:index, :show, :create, :update]
  resources :genres, only: [:new, :destroy, :index, :create]
  resources :labels, only: [:create, :destroy, :index]
  resources :artists, only: [:create, :destroy, :index]
  resources :arrival_cds, only: [:new, :index, :create]
  resources :favorites, only: [:create, :destroy]
  resources :reviews, only: [:create, :destroy, :edit, :update]
  resources :inquires, only: [:index, :show, :update, :form, :create]
  get 'inquires/form', to: 'inquires#form'

namespace :admins do
  devise_for :admins, :controller => {

  }
end
  devise_for :endusers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
