Rails.application.routes.draw do
  resources :patients
  resources :anaesthetics do
    resource :patients
  end
  resources :patients do
    resources :anaesthetics
  end
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
