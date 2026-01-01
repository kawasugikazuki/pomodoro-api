# Gemfile
source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.8'

gem 'rails', '~> 7.0.0'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'bootsnap', '>= 1.4.4', require: false

# CORS対応（フロントエンドとの通信用）
gem 'rack-cors'

# JSON API用
gem 'jsonapi-serializer'

# 認証（必要に応じて）
gem 'jwt'
gem 'bcrypt', '~> 3.1.21'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'rspec-rails'
  gem 'factory_bot_rails'
end

group :development do
  gem 'listen', '~> 3.3'
  gem 'spring'
end