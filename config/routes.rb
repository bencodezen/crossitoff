CrossItOff::Application.routes.draw do
  devise_for :users

  resources :items
  
  get 'about' => "welcome/about"

  root to: 'welcome#index'
end
