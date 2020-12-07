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

# アプリケーション名

  english-lesson-29832


# アプリケーション概要

  好きなユーザのレッスンを購入して、受講できる

  自由にレッスンを作り、出品できる


# URL
https://english-lesson-29832.herokuapp.com/


# テスト用アカウント
出品した講師アカウント
メールアドレス：test1@com
パスワード：1111rf

出品していない講師アカウント
メールアドレス：test2@com
パスワード：1111rf

生徒アカウント
メールアドレス：test1@com
パスワード：1111rf

# 利用方法

  言語を教えたい人が自分でレッスンの内容や構成、値段や時間などを決め、出品する

  海外旅行や移住のために、言語の勉強をしたい方が好きなユーザーのレッスンを購入し、受講する

  ただし、レッスンそのものはzoomを使う


# 目指した課題解決

  このアプリの利用者は個人であるため、現地の生の情報を雑談として、伝えることができる。

  そのため、言語の勉強をしたい方は勉強が楽しくなって、上達が早くなり、情報収集の手間も省ける


# 洗い出した要件
## レッスン一覧表示機能

【ボタン】

ログインしていない時は「新規登録画面、ログイン画面」に移動できるボタン

ログインしている時はマイページに移動できるボタンとログアウトできるボタン

【表示】

誰でも、出品されているレッスンの出品画像、レッスン名、料金を一覧で見ることができる。

## レッスン出品機能

【ボタン】

講師のアカウントでログインしていると、出品ボタンと戻るボタンがある

【表示】

講師のアカウントでログインしていると、画面が表示され、出品画像、レッスン名、レッスンの説明と自己紹介、カテゴリ、レッスンの回数と曜日と開始時間、終了時間、料金を入力するフォームがある

## レッスン詳細機能

【ボタン】

出品した講師アカウントの場合は、編集ボタンと削除ボタン、コメントボタン。生徒アカウントの場合は購入画面に進むボタンとコメントボタン。出品していない講師アカウントの場合はボタンなし。

【表示】

誰でも、レッスン画像、レッスン名、料金、レッスン詳細説明文、カテゴリ、レッスンの回数と曜日と開始時間、終了時間、講師のプロフィールを見ることができる
生徒(誰でも)と出品した講師の場合、コメントを書くことができる
売れたレッスンを出品した講師が見ると、購入した生徒の詳細を見ることができる
  
## レッスン編集機能

【ボタン】

出品した講師のアカウントでログインしていると、変更するボタンと戻るボタン

【表示】

講師のアカウントでログインしていると、画面が表示され、出品画像、レッスン名、レッスンの説明、カテゴリ、レッスンの回数と曜日と開始時間、終了時間、料金を入力するフォームがある
  
## レッスン購入機能

【ボタン】

生徒のアカウントでログインしていると、購入ボタンがある

【表示】

生徒のアカウントでログインしていると、「出品画像、レッスン名、料金」の表示、クレジットカード情報や回答を入力するフォームがある
購入すると、zoomのURLが表示される

## レッスン削除機能

画面なし

出品した講師のアカウントでログインしていると、できる

## ユーザー管理機能

アカウントの種類は講師アカウントと生徒アカウント

【ボタン】

新規登録画面は新規登録ボタン、ログイン画面はログインボタン

【表示】

講師の新規登録画面は「ニックネーム、メールアドレス、パスワード、居住地、留学経験、海外在住歴、zoomのURL、名前(全角)、カナ(全角)、生年月日、電話番号」を入力するフォーム

生徒の新規登録画面は「ニックネーム、メールアドレス、パスワード、名前(全角)、カナ(全角)、生年月日、電話番号」を入力するフォーム

ログイン画面は「メールアドレス、パスワード」を入力するフォームがあり、講師も生徒も共通。


# 実装した機能についてのGIFと説明

  ## レッスン一覧表示機能

  出品されているレッスンの一覧(写真、値段、名前)を誰でも見ることができる

  ## レッスン出品機能

  講師のアカウントでログインしていれば、全ての項目を入力するだけで、誰でも自由にレッスンを作り、出品できる

  ## レッスン詳細機能

  レッスンの詳細と講師のプロフィールについては誰でも見ることができる

  講師がログインしていれば、編集ページに進んだり、削除したり、コメントしたりできる

  生徒がログインしていれば、購入ページに進んだり、コメントしたりできる

  売れたレッスンを出品した講師が見ると、購入した生徒の詳細を見ることができる

  ## レッスン編集機能

  出品した講師がログインしていると、出品と同様の画面で編集できる

  ## レッスン購入機能

  生徒がログインしていると、クレジットカードの情報、回答を入力することで、好きなレッスンを購入できる
  
  購入すると、zoomのURLが表示される

  ## レッスン削除機能

  出品した講師がログインしていると、レッスンを削除できる

  ## ユーザー管理機能
  アカウントの種類は講師と生徒

  アカウントを持っていない方は新規登録ができる

  アカウントを持っている方はログインできる

  ログイン中の方はログアウトできる


# 実装予定の機能

  レッスン一覧表示機能

  レッスン検索機能

  項目にマウスを重ねた時にメニューが表示される機能

  レッスン出品機能

  レッスン詳細表示機能

  講師のプロフィール

  前や後のレッスンに移動できる機能
  
  コメント機能

  レッスン編集機能

  レッスン購入機能

  レッスン削除機能

  講師と生徒に分けてのユーザー管理機能

  講師と生徒双方のマイページ

  レスポンシブ機能


# データベース設計
## students テーブル

| Column         | Type    | Options     |
| -------------- | ------  | ----------- |
| email          | string  | null: false |
| nickname       | string  | null: false |
| password       | string  | null: false |
| first_name     | string  | null: false |
| first_hurigana | string  | null: false |
| last_name      | string  | null: false |
| last_hurigana  | string  | null: false |
| birthday       | date    | null: false |
| phone_number   | integer | null: false |

### Association

- has_many :orders
- has_many :student_comments

## teachers テーブル

| Column                        | Type    | Options     |
| ----------------------------- | ------- | ----------- |
| email                         | string  | null: false |
| nickname                      | string  | null: false |
| password                      | string  | null: false |
| first_name                    | string  | null: false |
| first_hurigana                | string  | null: false |
| last_name                     | string  | null: false |
| last_hurigana                 | string  | null: false |
| birthday                      | date    | null: false |
| phone_number                  | integer | null: false |
| living_place                  | string  | null: false |
| ryugaku_experience_id         | integer | null: false |
| english_test_id               | integer | null: false |
| overseas_residence_history_id | integer | null: false |

### Association

- has_many :lessons
- has_many :teacher_comments

## lessons テーブル

| Column             | Type    | Options                     |
|------------------- | ------- | --------------------------- |
| name               | string  | null:false                  |
| details            | text    | null:false                  |
| category_id        | integer | null:false                  |
| number_of_times_id | integer | null:false                  |
| what_day           | string  | null:false                  |
| start_time_id      | integer | null:false                  |
| end_time_id        | integer | null:false                  |
| price              | integer | null:false                  |
| teacher_id         | integer | null:false foreign_key:true |

## Association

- has_one    :order
- belongs_to :teacher
- has_many   :student_comments
- has_many   :teacher_comments

## orders テーブル

| Column     | Type    | Options                        |
| ---------- | ------- | ------------------------------ |
| student_id | integer | null: false, foreign_key: true |
| lesson_id  | integer | null: false, foreign_key: true |

### Association

- has_one    :student_detail
- belongs_to :student
- belongs_to :lesson

## student_details テーブル

| Column                        | Type    | Options                      |
| ----------------------------- | ------- | ---------------------------- |
| ryugaku_experience_id         | integer | null: false                  |
| english_test_id               | integer | null: false                  |
| living_place                  | string  | null: false                  |
| overseas_residence_history_id | integer | null: false                  |
| order_id                      | integer | null: false,foreign_key:true |

### Association

- belongs_to :order

## student_comments テーブル

| Column     | Type    | Options                        |
| ---------- | ------- | ------------------------------ |
| text       | text    | null: false                    |
| student_id | integer | null: false, foreign_key: true |
| lesson_id  | integer | null: false, foreign_key: true |

### Association

- belongs_to :student
- belongs_to :lesson

## teacher_comments テーブル

| Column     | Type    | Options                        |
| -----------| ------- | ------------------------------ |
| text       | text    | null: false                    |
| teacher_id | integer | null: false, foreign_key: true |
| lesson_id  | integer | null: false, foreign_key: true |

### Association

- belongs_to :teacher
- belongs_to :lesson

# ローカルでの動作方法

rubyのバージョン:6.0.0

ターミナルで、リポジトリを保存したいフォルダを開いておき、次のコマンドを実行

git clone https://github.com/yusukeueda0430/language_lesson.git

cd language_lesson

ls -a | grep .git

rm -rf .git