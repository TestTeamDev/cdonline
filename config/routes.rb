Rails.application.routes.draw do
  get 'cds/index'
  get 'cds/show'
  get 'cds/edit'
  get 'cds/new'
  devise_for :admins
  devise_for :endusers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
