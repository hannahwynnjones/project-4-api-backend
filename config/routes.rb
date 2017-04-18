Rails.application.routes.draw do
  resources :legs
  scope :api do
    resources :airports
    resources :comments
    resources :trips
    resources :users
    post 'register', to: 'authentications#register'
    post 'login', to: 'authentications#login'
    get 'flights', to: 'skyscanner#flights'

  end
end
