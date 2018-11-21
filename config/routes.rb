Rails.application.routes.draw do
  resources :restaurants
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants do
        collection do                       # collection => no restaurant id in URL
      get 'top', to: "restaurants#top"  # RestaurantsController#top
    end
  end

  resources :restaurants do
    resources :reviews, only: [ :new, :create ]
  end

end
