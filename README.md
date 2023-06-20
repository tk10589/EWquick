# README

* Ruby version
rails _6.0.0_

# テーブル設計

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| nickname           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

### Association

- has_many :preparation

## preparation テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| my_submitter     | string     | null: false                    |
| my_director      | text       | null: false                    |
| my_company       | integer    | null: false                    |
| my_Address       | integer    | null: false                    |
| my_phone_number  | integer    | null: false                    |
| my_fax_number    | integer    | null: false                    |
| user_id          | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :customers

## customers テーブル

| Column            | Type       | Options                        |
| ----------------- | ---------- | ------------------------------ |
| cust_contact      | string     | null: false                    |
| cust_director     | text       | null: false                    |
| cust_company      | integer    | null: false                    |
| cust_Address      | integer    | null: false                    |
| cust_phone_number | integer    | null: false                    |
| cust_fax_number   | integer    | null: false                    |
| preparer          | references | null: false, foreign_key: true |

### Association

- belongs_to :preparer
- has_many :items

## items テーブル

| Column               | Type       | Options                        |
| -------------------- | ---------- | ------------------------------ |
| item_name            | string     | null: false                    |
| unit_price           | integer    | null: false                    |
| man_hours            | string     | null: false                    |
| quantity             | string     | null: false                    |
| man_hours_unit_prise | string     | null: false                    |
| amount_total         | string     | null: false                    |
| preparer             | references | null: false, foreign_key: true |
| customer             | references | null: false, foreign_key: true |

### Association

- belongs_to :preparer
- belongs_to :customer
