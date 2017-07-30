Rails.application.routes.draw do
  root 'corsairs#index'
  resources :corsairs
end
