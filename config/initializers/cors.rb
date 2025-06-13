# config/initializers/cors.rb
Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    # 開発環境では全てのオリジンを許可（本番では変更必要）
    origins 'http://localhost:3000', 'https://pomodoro-timer-six-murex.vercel.app/'
    
    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end