Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :tasks # ルーティングをまとめて設定(index、new、create、show、edit、update、destroyアクションに対するルーティングを設定してくれる。)
  root to: 'tasks#index' # トップページの設定にはrootが用いられる
  
  get 'tasks/new' => 'tasks/new'
end
