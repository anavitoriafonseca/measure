Rails.application.routes.draw do
  root "distances#new"
  resources :distances

end
