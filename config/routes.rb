Rails.application.routes.draw do

  devise_for :users
resources :users do
  resources :vehicles
end

resources :locations do
  resources :slots
end

end
