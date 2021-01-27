Rails.application.routes.draw do
  
  root 'pages#index'
  get 'about' => 'pages#about'
  get 'courses' => 'courses#index' 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  
end
