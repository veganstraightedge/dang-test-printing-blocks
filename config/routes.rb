Rails.application.routes.draw do
  root 'peoople#index'
  resources :people
end
