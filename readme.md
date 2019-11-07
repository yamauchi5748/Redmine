# 環境

| Name           | Vesion  |
| :------------- | :------ |
| Docker         | 19.03.4 |
| docker-compose | 1.24.1  |
| redmine        | 3.4     |
| MySQL          | 5.7     |

## ディレクトリ構成

```
├ Redmine
|	├ docker
|	|	├ mysql
|	|		└ Dockerfile
|	|	└ redmine
|	|		└ Dockerfile
|	|
|	├ files
|	├ mysql
|	├ plugins
|	└ env-example
|
├ .gitignore
├ .env-example
├ docker-compose.yml
├ up.bat
└ down.bat
```

## Dockerのインストール

Dockerをインストールしていなければ下記のurlからダウンロードし、インストールする

<a href="https://hub.docker.com/editions/community/docker-ce-desktop-windows">DockerHub公式</a>

※DockerHubのアカウントが必要

※DockerHubのアップデートも確認しておく

## 環境を立ち上げる(Windows 環境)

プロジェクトをHTTPSでクローン

`git clone https://github.com/yamauchi5748/Redmine.git`

ターミナルを起動し、Redmineディレクトリ直下で下記コマンドを実行

`up`



最終行が

```
[日付] INFO WEBrick::HTTPServer#start: pid=1 port=3000
```

と表示されていれば成功

http://localhost にアクセスする



### コマンド一覧

- `up`
  - `Redmine`ディレクトリ直下で実行
  - コンテナ立ち上げ
- `down`
  - `Redmine`ディレクトリ直下で実行
  - コンテナを閉じる



## 初期設定

### 環境が立ち上がったらやること

1. サインインしてadminユーザのパスワードを変更する
   - 初期情報
     - login => admin
     - password => admin
2. My Accountから言語を日本語に変更する

