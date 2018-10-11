# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# １章　データベース設計
    ・情報が変更した際に、IDの付与とそれを使った関連付けをすれば変更も楽
    ・テーブル名、カラム名は半角英数字

## カラムのデータ型について
    数字の整数のみ：integer
    その他：text

## プライマリキー：
    あるテーブルの中でデータ行（レコード）をひとつに特定できる列（カラム）
## 外部キー(foreign key)：
    ユーザ情報を一意に区別するuseridをプライマリキーと呼びますが、そのidに紐づいている投稿画像テーブルにあるuseridを外部キーと呼ぶ

### カラムに設定する制約について
    - AUTO INCREMENT
        新しいデータが保存されるたびに、
        データベース側でIDを1ずつ増やして採番する
    - NOT NULL
        IDに空のデータを保存することを禁止する
    - UNIQUE
        IDについてはテーブル内で重複することを禁止する
    - INDEX
        検索速度を早くするために索引を作成する

## Gem
    Rubyのライブラリ管理ツール
    Gemfileに追加後、bundle install
### devise
    - ログイン機能やユーザ登録機能を簡単に実装できる
    - ログインに必要なユーザ情報を保存テーブルを自動的に作成
    - devise独自でモデル名を作成する(rails g devise modelname)
    - ログイン認証が成功した場合、config/routes.rb内で設定されているrootパスへリダイレクトされます。



## User
## PostImage(画像投稿)
### refile: ファイルアップロード用gem
### refile-mini_magick: アップロードした画像のリサイズを簡単に実装

## routes.rb
    resources : ルーティングを自動で生成
    only : ルーティングを絞る