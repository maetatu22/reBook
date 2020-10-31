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
| auther        | string     | null: false                    |
| content       | text       | null: false                    |
| genre_id      | integer    | null: false                    |
| purpose_id    | integer    | null: false                    |
| user          | references | null: false, foreign_key: true |

### Association

- belongs_to :user


## profiles テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| birthday      | date       |                                |
| gender        | string     |                                |
| fav_genre1_id | integer    |                                |
| fav_genre2_id | integer    |                                |
| fav_genre3_id | integer    |                                |
| user          | references | foreign_key: true              |

### Association

- belongs_to :user
