Rails.application.routes.draw do

  get 'tags/index'

  devise_for :users
  resources :ideas

  get 'static/about', as: 'about'

  root 'static#homepage'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
