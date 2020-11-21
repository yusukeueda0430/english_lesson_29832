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

  english_lesson


# アプリケーション概要

  好きなユーザのレッスンを購入して、受講できる

  自由にレッスンを作り、出品できる


# URL


# テスト用アカウント


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

誰でも、出品されているレッスンの出品画像、レッスン名、料金を一覧で見ることができる

## レッスン出品機能

【ボタン】

講師のアカウントでログインしていると、出品ボタンと戻るボタンがある

【表示】

講師のアカウントでログインしていると、画面が表示され、出品画像、レッスン名、レッスンの説明と自己紹介、カテゴリ、居住地、留学経験、海外在住歴、レッスンの回数と曜日と開始時間、終了時間、料金を入力するフォームがある

## レッスン詳細機能

【ボタン】

講師のアカウントの場合は、編集ボタンと削除ボタン。生徒のアカウントの場合は購入画面に進むボタン

【表示】

誰でも、出品画像、レッスン名、レッスンの説明と自己紹介、カテゴリ、居住地、留学経験、海外在住歴、レッスンの回数と曜日と開始時間、終了時間、料金を見ることができる
  
## レッスン編集機能

【ボタン】

講師のアカウントでログインしていると、変更するボタンと戻るボタン

【表示】

講師のアカウントでログインしていると、画面が表示され、出品画像、レッスン名、レッスンの説明と自己紹介、カテゴリ、居住地、留学経験、海外在住歴、レッスンの回数と曜日と開始時間、終了時間、料金を入力するフォームがある
  
## レッスン購入機能

【ボタン】

生徒のアカウントでログインしていると、購入ボタンがある

【表示】

生徒のアカウントでログインしていると、「出品画像、レッスン名、料金」の表示、クレジットカード情報や回答を入力するフォームがある

## レッスン削除機能

画面なし

講師のアカウントでログインしていると、できる

## ユーザー管理機能
【ボタン】

新規登録画面は新規登録ボタン、ログイン画面はログインボタン

【表示】

新規登録画面は「ニックネーム、メールアドレス、パスワード、名前(全角)、カナ(全角)、生年月日、電話番号」を入力するフォーム

ログイン画面は「メールアドレス、パスワード」を入力するフォーム


# 実装した機能についてのGIFと説明

  ## レッスン一覧表示機能

  出品されているレッスンの一覧(写真、値段、名前)を誰でも見ることができる

  ## レッスン出品機能

  講師のアカウントでログインしていれば、全ての項目を入力するだけで、誰でも自由にレッスンを作り、出品できる

  ## レッスン詳細機能

  詳細については誰でも見ることができる

  講師がログインしていれば、編集ページに進んだり、削除したりできる

  生徒がログインしていれば、購入ページに進める

  ## レッスン編集機能

  講師がログインしていると、出品と同様の画面で編集できる

  ## レッスン購入機能

  生徒がログインしていると、クレジットカードの情報を入力することで、好きなレッスンを購入できる

  ## レッスン削除機能

  講師がログインしていると、レッスンを削除できる

  ## ユーザー管理機能
　アカウントの種類は講師と生徒

  アカウントを持っていない方は新規登録ができる

  アカウントを持っている方はログインできる

  ログイン中の方はログアウトできる


# 実装予定の機能

  レッスン一覧表示機能

  レッスン出品機能

  レッスン詳細機能

  レッスン編集機能

  レッスン購入機能

  レッスン削除機能

  ユーザー管理機能


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

## teachers テーブル

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

- has_many :lessons

## lessons テーブル

| Column                        | Type       | Options                     |
| ----------------------------- | ------- | ------------------------------ |
| name                          | string  | null: false                    |
| details                       | text    | null: false                    |
| category_id                   | integer | null: false                    |
| living_place                  | string  | null: false                    |
| ryugaku_experience_id         | integer | null: false                    |
| overseas_residence_history_id | integer | null: false                    |
| number_of_times_id            | integer | null: false                    |
| what_day                      | string  | null: false                    |
| start_time_id                 | integer | null: false                    |
| end_time_id                   | integer | null: false                    |
| price                         | integer | null: false                    |
| user_id                       | integer | null: false  foreign_key: true |

## Association

- has_one    :order
- belongs_to :user

## orders テーブル

| Column    | Type    | Options                        |
| --------- | ------- | ------------------------------ |
| user_id   | integer | null: false, foreign_key: true |
| lesson_id | integer | null: false, foreign_key: true |

### Association

- has_one    :user_details
- belongs_to :user
- belongs_to :lesson

## user_details テーブル

| Column                        | Type    | Options                        |
| ----------------------------- | ------- | ------------------------------ |
| ryugaku_experience_id         | integer | null: false                    |
| english_test_id               | integer | null: false                    |
| order_id                      | integer | null: false, foreign_key: true |

### Association

- belongs_to :order

# ローカルでの動作方法

rubyのバージョン:6.0.0

ターミナルで、リポジトリを保存したいフォルダを開いておき、次のコマンドを実行

git clone https://github.com/yusukeueda0430/language_lesson.git

cd language_lesson

ls -a | grep .git

rm -rf .git