Rails.application.routes.draw do
  
  root 'pages#index'
  get 'about' => 'pages#about'
  resources :courses do
    member do
      get :delete
    end
  end
  resources :episodes do
    member do
      get :delete
    end
  end
  #get 'courses' => 'courses#index' 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  
end
