Rails.application.routes.draw do
  resources :restaurants, except: [ :update, :edit, :destroy ] do
    resources :reviews, only: [:create ]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
