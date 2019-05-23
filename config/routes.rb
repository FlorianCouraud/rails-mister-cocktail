Rails.application.routes.draw do
  get 'doses/new'
  get 'doses/create'
  get 'doses/destroy'
  resources :cocktails, only: [:index, :new, :create, :show] do
    resources :doses, only: [:new, :create, :delete]
  end
end
