Rails.application.routes.draw do
  resources :cocktails, only: [:index, :new, :create, :show]
end
