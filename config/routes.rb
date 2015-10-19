Rails.application.routes.draw do


  devise_for :users
resources :products
   resources :students do 
   #   get "delete"
   end
   root "students#index"
   resources :home, :only => [:index]
end
