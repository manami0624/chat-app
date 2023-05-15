Rails.application.routes.draw do
  devise_for :users
  root to: "rooms#index"
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create] do #新規チャットルームの作成で動くアクションは二つのみ
    resources :messages, only: [:index, :create]
  end
end
