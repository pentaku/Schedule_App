Rails.application.routes.draw do
  root to : 'tasks#index'#トップページ設定
  resources :tasks #tasksControllerをまとめて設定
end

  # get '/tasks', tasks#index                       # タスク一覧を表示
  # get 'tasks/index', to: 'tasks#index'            # タスク一覧を表示
  # get 'tasks/new', to: 'tasks#new'                # 新しいタスク作成フォームを表示
  # post '/tasks', to: 'tasks#create'               # 新しいタスクを作成
  # get '/tasks/:id', to: 'tasks#show'              # 特定のタスクを表示
  # get '/tasks/:id/edit', to: 'tasks#edit'         # 特定のタスク編集フォームを表示
  # patch '/tasks/:id', to: 'tasks#update'          # 特定のタスクを更新
  # delete '/tasks/:id', to: 'tasks#destroy'        # 特定のタスクを削除
