Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/about'
  root 'static_pages#home'
  #get 'static_pages/home'
  get 'about' => 'static_pages#about'
  #get 'static_pages/about'
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
end
