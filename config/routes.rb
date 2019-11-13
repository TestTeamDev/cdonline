Rails.application.routes.draw do


  get 'endusers/index'
  get 'endusers/show'
  get 'endusers/edit'
  get 'endusers/leave'


  devise_for :admins
end
  devise_for :endusers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
