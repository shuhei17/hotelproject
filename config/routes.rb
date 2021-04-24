Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :contacts, :only => [:new, :create, :show]
  resources :hotels, :only => [:index, :show] do
	  resources :reviews, :only=> [:index, :new, :create]
	end

  root 'hotels#index'
  
end
