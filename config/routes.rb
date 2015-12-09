Rails.application.routes.draw do
  root to: "stations#index"

  resources :stations, only: [:index] do
    resources :events, only: [:new, :create]
  end

end
