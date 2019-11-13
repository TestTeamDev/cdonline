Rails.application.routes.draw do

namespace :admins do
  devise_for :admins
end
  devise_for :endusers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
