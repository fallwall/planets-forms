Rails.application.routes.draw do
  root "application#index", page: "index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :planets do
  end
  get '/random', to: 'planets#random'
end
