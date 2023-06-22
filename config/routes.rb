Rails.application.routes.draw do
 #会員側のルーティング
  devise_for :users, controllers: {
   sessions: "user/sessions",
   registrations: "user/registrations"
  }

  #管理者側のルーティング
  # URL /admin/sign_in ...
  devise_for :admin, controllers: {
  #ログイン、ログアウト関連
  sessions: "admin/sessions",
}

  #ゲストログインのルーティング
  devise_scope :user do
     post 'users/guest_sign_in', to: 'users/sessions#guest_sign_in'
  end

   #トップページ
   root to: 'homes#top'
   #アバウトページ
   get 'about' => 'homes#about'


 namespace :admin do
  #カテゴリーについて
  resources :categories, only: [:index, :create, :edit, :update, :destroy, :show]
  #会員について
  resources :users, only: [:index, :show, :edit, :update]
  #レビューについて
  resources :reviews, only: [:index, :show, :update, :destroy]
  #シャンプーについて
  resources :shampooitems, only: [:new, :index, :show, :edit, :create, :update, :destroy]
 end

 scope module: 'user' do
   #レビューについて
   resources :reviews, only: [:new, :index, :show, :edit, :create, :update, :destroy]
   #会員について
   resources :users, only: [:index, :edit, :update, :show]
   #シャンプーについて
   resources :shampooitems, only: [:index, :show]
   get '/users/mypage' => 'users#show'
   get 'check' => 'users#check'
   match '/users/withdrawal' => 'users#withdrawal', via: [:patch, :delete], as: 'users_withdrawal'
 end
 # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.htm
end
