Rails.application.routes.draw do
  scope :api do
    resources :airports
    resources :comments
    resources :trips
    resources :users
    resources :legs
    post 'register', to: 'authentications#register'
    post 'login', to: 'authentications#login'
    get 'flights', to: 'skyscanner#flights'

  end
end
