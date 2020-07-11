Rails.application.routes.draw do
  resources :products
  devise_for :users
      devise_scope :user do
       authenticated :user do
           root to: 'products#index'
        end
      
        unauthenticated do
           root to: 'devise/sessions#new'
        end
    end




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
