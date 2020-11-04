## Table名

|Column|Type|Options|
|------|----|-------|
（ここに追記していく）

## users table
has_many :items
has_many :customers

|Column|Type|Options|
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
|user_id|integer|null: false, foreign_key: true|
|item_name|string|null: false|
|detail|text|null: false|
|category_id|integer|null: false|
|status_id|integer|null: false|
|delivery_change_id|integer|null: false|
|Shipping_area_id|integer|null: false|
|ship_days_id|integer|null: false|
|price|integer|null: false|

## customers table
customer belongs_to :user
customer has_one :item
customer has_one :address

|item_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false|

## addresses table
has_one :customer

|postal_code|string|null: false|
|prefecture_id|string|null: false|
|city|string|null: false|
|house_number|string|null: false|
|building_name|string|
|phone_number|string|null: false|

### Association
（ここに追記していく）