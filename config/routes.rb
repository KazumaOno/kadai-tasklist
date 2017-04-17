Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
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
  
  # 上記七ページの表示をまとめている
  resources :tasks
end
