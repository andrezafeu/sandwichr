Rails.application.routes.draw do
  resources :sandwiches, except: [:new, :edit]
  #resources : sandwiches, only: [:index, :update, :create, :show, :destroy]
end
