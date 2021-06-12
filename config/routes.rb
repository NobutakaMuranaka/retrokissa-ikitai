Rails.application.routes.draw do

  resources :stores
  root 'static_pages#home'
end
