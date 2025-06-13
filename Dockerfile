# Dockerfile
FROM ruby:3.2.8

# 必要なパッケージをインストール
RUN apt-get update -qq && apt-get install -y \
  nodejs \
  npm \
  postgresql-client \
  && rm -rf /var/lib/apt/lists/*

# アプリケーションディレクトリを作成
WORKDIR /app

# GemfileとGemfile.lockをコピー
COPY Gemfile Gemfile.lock ./

# bundlerのバージョンを更新
RUN gem update bundler

# gemをインストール
RUN bundle install

# アプリケーションコードをコピー
COPY . .

# ポート3000を公開
EXPOSE 3000

# サーバーを起動
CMD ["rails", "server", "-b", "0.0.0.0"]