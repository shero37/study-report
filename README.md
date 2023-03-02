# アプリケーション名
STUDY REPORT
# アプリケーション概要
指導報告書をアプリケーションで提出し、家庭教師の会社本部と先生で共有できるようにする。
# URL
# テスト用アカウント
・Basic認証ID
・Basic認証パスワード
# 利用方法

# アプリケーションを作成した背景
自分自身が家庭教師のアルバイトをしていた時、ひと月に一度の指導報告書の提出方法が郵送かFaxでした。指導報告書は生徒ごとに書くので、会社本部は沢山の量が送られてきて管理が大変ですし、先生側としてももう少し簡単に提出できたらいいのではないかと考えました。そこでWebアプリケーションを導入してペーパーレスにしようと考え、指導報告書の提出・共有ができるようなアプリケーションの開発をすることにしました。
# 洗い出した要件
https://docs.google.com/spreadsheets/d/1ryNzlwm_fK5bVfAaikfKuEm-cwkzh3NQFum5tmdjhMc/edit#gid=982722306


# テーブル設計

## users テーブル

| Column             | Type    | Options                   |
| ------------------ | ------- | ------------------------- |
| name               | string  | null: false               |
| email              | string  | null: false, unique: true |
| encrypted_password | string  | null: false               |

### Association

- has_many :students

## students テーブル

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| student  | string     | null: false                    |
| grade_id | integer    | null: false                    |
| month_id | integer    | null: false                    |
| user     | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :reports
- has_one :guidance_fee

## reports テーブル

| Column                 | Type       | Options                        |
| ---------------------- | ---------- | ------------------------------ |
| month_id               | integer    | null: false                    |
| day_id                 | integer    | null: false                    |
| hour                   | decimal    | null: false                    |
| transportation_expense | integer    |                                |
| content                | text       | null: false                    |
| student                | references | null: false, foreign_key: true |

### Association

- belongs_to :student

## guidance_fees テーブル

| Column                       | Type       | Options                        |
| ---------------------------- | ---------- | ------------------------------ |
| guidance_fee_total           | integer    | null: false                    |
| transportation_expense_total | integer    | null: false                    |
| total                        | integer    | null: false                    |
| student                      | references | null: false, foreign_key: true |

### Association

- belongs_to :student

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/b667c657ef7cc4b8adf8a98830245863.png)](https://gyazo.com/b667c657ef7cc4b8adf8a98830245863)