Rails.application.routes.draw do

	root 'questions#index'
  
  resources :comments
  resources :answers
  resources :questions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end