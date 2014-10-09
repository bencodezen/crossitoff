CrossItOff::Application.routes.draw do
  devise_for :users

  resources :users do
    resources :items, controller: 'users/items'
  end
  
  get 'about' => "welcome/about"

  root to: 'welcome#index'
end
