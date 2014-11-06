CrossItOff::Application.routes.draw do
  devise_for :users

  namespace :users do
    resources :items, only: [:index, :create, :destroy]
  end
  
  get 'about' => "welcome#about"

  root to: 'welcome#index'
end
