Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
   # 以下のルーティングを定義
  resources :messages
  resources :users
  resources :tasks
end
