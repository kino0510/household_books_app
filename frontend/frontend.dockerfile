# ベースイメージ
FROM node:18

# 作業ディレクトリを設定
WORKDIR /app

# パッケージリストをコピー
COPY package.json package-lock.json ./

# 依存関係をインストール
RUN npm install

# アプリケーションコードをコピー
COPY . .

# 開発サーバーを起動
CMD ["npm", "run", "dev"]
