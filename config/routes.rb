# config/routes.rb
Rails.application.routes.draw do
  
  # APIルート
  namespace :api do
    namespace :v1 do
      post 'register', to: 'authentication#register'
      post 'login', to: 'authentication#login'
    end
  end
  
  # ヘルスチェック用（動作確認用）
  get '/health', to: proc { [200, {}, ['API is healthy!']] }
  
end