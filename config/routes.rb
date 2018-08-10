Rails.application.routes.draw do
  resources :hzs
  resources :order__forces
  resources :orders_news
  resources :orders
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#saysomething'
end
