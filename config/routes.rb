Rails.application.routes.draw do

  devise_for :users
	root 'questions#index'
  
  resources :comments
  resources :answers
  resources :questions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end