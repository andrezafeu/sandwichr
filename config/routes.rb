Rails.application.routes.draw do
  resources :sandwiches, only: [:index, :show], controller: "sandwich_views"
  scope "/api" do
	  resources :ingredients, only: [:create, :destroy, :show]
	  resources :sandwiches, except: [:new, :edit]
	  #resources : sandwiches, only: [:index, :update, :create, :show, :destroy]
	  post "/sandwiches/:id/ingredients/add" => "sandwiches#add_ingredient"
	end
end
