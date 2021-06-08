Rails.application.routes.draw do
  resources :customers do
    resources :phones
  end
end
