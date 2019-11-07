@echo off
rem このファイルの場所をカレントディレクトリとする
cd /d %~dp0

rem .envファイルを作成
copy env-example .env

rem 各コンテナをビルド
docker-compose build --no-cache

rem 各コンテナを起動
docker-compose up -d