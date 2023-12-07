Rails.application.routes.draw do
  root :to => "web/boards#show"

  namespace :admin do
    resources :users
  end

  scope module: :web do
    resource :board, only: :show
    resources :developers, only: [:new, :create]
    resource :session, only: [:new, :create, :destroy]
  end
end
