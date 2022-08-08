Rails.application.routes.draw do
  devise_for :users
  # get 'messages/index'
  # root to:で、/localhost:3000/を入力した時に"rooms#index"に遷移されるようになる、root to:を消した場合railsの初期画面に遷移される。
  root to: "rooms#index"
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create]
end
