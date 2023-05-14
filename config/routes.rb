Rails.application.routes.draw do
  devise_for :users
  get 'messages/index'
  root to: "messages#index"  #ビューを実装するための仮のルーティング設定
  resources :users, only: [:edit, :update]
end
