Rails.application.routes.draw do

resources :users do
  resources :vehicles
end

resources :locations do
  resources :slots
end

end
