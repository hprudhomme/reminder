Rails.application.routes.draw do
  get 'static_pages/index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :block do
    resources :notte
  end

  resources :todolist do
    resources :task
  end

  resources :preference

  match '/block',      to: 'notte#add',        via: 'post'

  root to: "static_pages#index"
end
