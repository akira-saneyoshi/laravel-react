# larareact
- 更新日：2022/6/6
- 作成者：saneyoshi

# 前提
- windows10 Pro 21H2 環境にて動作確認済み。
- node.jsはローカルPCにてインストールしても構いません。
- JSファイルのコンパイルは、node.jsをローカルPCにインストールしている場合は\
コマンドプロンプトにて「npm start」 もしくは「npm run dev」を実行してください。\
Dockerコンテナーのfrontコンテナーでもnpmの実行が可能です。
- JSファイルのコンパイル後に動作確認をする際は、Dockerコンテナーで実施する必要があります\
（Laravel API連携がない場合はローカルにて実行できます）。

# 使用技術
frontend: React:18.1.0/Tailwind CSS\
backend(api): Laravel:8.6\
infra: Docker/PHP:8.0, nginx:1.19, mysql:5.7, node:14.17

# 環境構築
## 1. Docker Containerのbuildおよびcompose up
- コマンドプロンプトにて、larareactディレクトに移動し、下記コマンドを順に実行する。
### 'docker compose build'
### 'docker compose up -d'

## 2. Laravelの環境を整備するため、api ContainerのCLIを起動し、下記コマンドを実行する
### 'composer install'
### 'cd amtitoil'
### 'chmod -R 777 storage bootstrap/cache'
### 'php artisan migrate'
### 'exit'

- http://localhost:80にアクセスし、Laravel画面が確認できればOK！\
（pullしたブランチにより初期画面:Homeが異なります。）

## 3. front側の画面を確認する場合は、node ContainerのCLIを起動し、npm start もしくはnpm run devでソースファイルをコンパイルし、npmサーバを起動させる。
### 'npm start'

http://localhost:3000にアクセスし、fornt側の画面が確認できればOK！\

環境構築は以上。