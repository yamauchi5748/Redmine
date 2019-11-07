@echo off
rem このファイルの場所をカレントディレクトリとする
cd /d %~dp0

rem .envファイルを作成
copy env-example .env

rem 各コンテナをビルド
docker-compose build --no-cache

rem mysqlを起動
docker-compose up -d mysql

timeout /t 15 /NOBREAK
 
rem redmineを起動
docker-compose up redmine