Rails.application.routes.draw do
 #会員側のルーティング
  devise_for :users
  
  #管理者側のルーティング
  # URL /admin/sign_in ...
  devise_for :admin, controllers: {
  #ログイン、ログアウト関連
  sessions: "admin/sessions",
}
 #トップ
  get 'homes/top'
 # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.htm
end
