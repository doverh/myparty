Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  get  '/signup',  to: 'vendors#new'
  resources :vendors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
