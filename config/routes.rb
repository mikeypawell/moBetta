Rails.application.routes.draw do
  root to: "welcome#index"

  resources :users do
  	resources :meetings, except: [:destroy]
  end

  get "/sign_in", to: "sessions#new"

  post "/sessions", to: "sessions#create"

  post "/logout" => "sessions#destroy"

  #destroy post
  delete '/users/:user_id/meetings/:id', to: 'meetings#destroy', as: 'delete_user_meeting'

end





