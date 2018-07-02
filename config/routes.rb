Rails.application.routes.draw do

  devise_for :users
	root 'questions#index'
  
  resources :comments
  resources :answers
  resources :questions do
  	member do
  		put "Upvote", to: "questions#upvote"
  		put "Downvote", to: "questions#downvote"
  	end
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end