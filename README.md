# テーブル設計

## users テーブル

| Column           | Type   | Options     |
| ---------------- | ------ | ----------- |
| nickname         | string | null: false |
| email            | string | null: false |
| password         | string | null: false |


### Association

- has_many :posts
- has_one :profile


## posts テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| title         | string     | null: false                    |
| author        | string     | null: false                    |
| content       | text       | null: false                    |
| purpose       | integer    | null: false                    |
| user          | references | foreign_key: true              |
| genre         | references | foreign_key: true              |

### Association

- belongs_to :user
- belongs_to :genre


## profiles テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| birthday      | date       |                                |
| gender        | integer    |                                |
| genre         | references | foreign_key: true              |
| user          | references | foreign_key: true              |

### Association

- belongs_to :user
- belongs_to :genre


##  テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| name          | string     |                                |

### Association

- has_many :posts
- has_many :profiles