Rails.application.routes.draw do
  # CRUD
    #get 'messages/:id', to: 'messages#show'
    #post 'messages', to: 'messages#create'
    #put 'messages/:id', to: 'messages#update'
    #delete 'messages/:id', to: 'messages#destroy'
  # show 一覧表示
    #get 'messages', to: 'messages#index'
  # new 新規作成
    #get 'messages/new', to: 'messages#new'
  # edit: 更新
    #get 'messages/:id/edit', to: 'messages#edit'
  
  # ルートページはmessage 一覧
  root to: 'tasks#index'
  #root to: 'toppages#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  # 上記七ページの表示をまとめている
  resources :tasks
  
  # ユーザー管理
  get 'signup', to: 'users#new'
  resources :users, only: [:index, :show, :new, :create]
  
  #resources :tasks, only: [:create, :destroy]
end
