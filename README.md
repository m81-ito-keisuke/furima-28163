## Table名

|Column|Type|Options|
|------|----|-------|
（ここに追記していく）

## users table
has_many :items
has_many :customers

|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false, unique: true|
|email|string|null: false, unique: true|
|encrypted_password|string|null: false|
|last_name|string|null: false|
|first_name|string|null: false|
|last_kana|string|null: false|
|first_kana|string|null: false|
|birthday|date|null: false|

## items table
belongs_to :user
has_one :customer

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|name|string|null: false|
|detail|text|null: false|
|category_id|integer|null: false|
|status_id|integer|null: false|
|delivery_change_id|integer|null: false|
|prefecture_id|integer|null: false|
|ship_day_id|integer|null: false|
|price|integer|null: false|

## customers table
belongs_to :user
belongs_to :item
has_one :address

|Column|Type|Options|
|------|----|-------|
|item_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|

## addresses table
belongs_to :customer

|Column|Type|Options|
|------|----|-------|
|postal_code|string|null: false|
|prefecture_id|integer|null: false|
|city|string|null: false|
|house_number|string|null: false|
|building_name|string|
|phone_number|string|null: false|
|customer_id|integer|null: false, foreign_key: true|

### Association
（ここに追記していく）