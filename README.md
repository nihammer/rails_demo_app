Ruby on Rails Demo App
=====

このデモアプリでは、2つ機能があります。
* 日本人の苗字或いは下の名前を検索する機能
* 性別によって10件の名前をランダム生成する機能

Link to App
-----
* Heroku: https://nham-rails-demo.herokuapp.com

開発環境について
-----
* Ruby version: 2.4.0p0
* MySQL Server 5.5.57

以下、データ投入の手順です。
1. DBの開発環境設定
```
mv config/local_env.yml.sample config/local_env.yml
```
2. DBを作成する
（Mysql serverを起動する必要です。）
```
rake db:setup
```

デプロイ環境について
-----
* Server: Heroku
* Database: ClearDB
