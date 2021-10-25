Rails.application.routes.draw do
  root to: 'homes#top'
  devise_for :users

  # resourcesを使用したルーティング
  resources :menus
  resources :menu_foods, only: [:new, :create, :edit, :update, :destroy]
  resources :users, only: [:show, :create, :edit, :update, :index, :destroy]

  # usersコントローラーの編集画面関連のルーティング
  get 'users/:id/settings' => 'users#setting', as: 'user_setting'
  get 'users/:id/delete' => 'users#delete', as: 'user_delete'

  # contactコントローラのルーティング
  resources :contacts, only: [:new] do
    collection do
      post 'send_user' => 'contacts#send_user'
      get 'sent_user' => 'contacts#sent_user'
    end
    member do
      get 'detail'
    end
  end

  # searchsコントローラーのルーティング
  get 'search/food' => 'searchs#search_food', as: 'search_food'
  get 'search/keyword' => 'searchs#keyword', as: 'keyword'
  get 'search/search_result' => 'searchs#search_result', as: 'search_result'

  #CSVインポート用のfoodsコントローラーのルーティング
  post 'import' => 'foods#import', as: 'import_foods'
  get 'import' => 'foods#data', as: 'import'
end