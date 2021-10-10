Rails.application.routes.draw do
  get 'customers/new'
  get 'customers/create'
  get 'searchs/search'
  get 'settings/index'
  get 'settings/edit'
  get 'settings/update'
  get 'settings/delete'
  get 'settings/deleted'
  get 'settings/contact'
  get 'settings/send'
  get 'foods/create'
  get 'recipe_foods/new'
  get 'recipe_foods/create'
  get 'recipes/index'
  get 'recipes/new'
  get 'recipes/create'
  get 'recipes/show'
  get 'recipes/edit'
  get 'recipes/update'
  get 'recipes/destroy'
  get 'menus/new'
  get 'menus/create'
  get 'menus/index'
  get 'menus/edit'
  get 'menus/update'
  get 'menus/delete'
  get 'homes/top'
  root to: 'homes#top'
  # resourcesを使用したルーティング
  resources :menus, except: [:show]
  resources :recipes
  resources :recipe_foods, only: [:new, :create]
  resources :foods, only: [:create]
  resources :settings, only: [:index, :edit, :update]

  # settingsコントローラーのルーティング
  get 'settings/:id/delete' => 'settings#delete', as: 'setting_delete'
  delete 'settings/:id' => 'settings#deleted', as: 'setting_deleted'
  get 'settings/contact/:id' => 'settings#contact', as: 'contact'
  post 'settings/contact' => 'settings#send', as: 'send'

  # searchsコントローラーのルーティング
  get 'search' => 'searchs#search', as: 'search'

  # customersコントローラーのルーティング
  get 'customers/new' => 'customers#new', as: 'customers_new'
  post 'customers' => 'customers#create', as: 'customer'
end