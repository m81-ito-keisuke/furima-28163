## Table名

|Column|Type|Options|
|------|----|-------|
（ここに追記していく）

## users table

|Column|Type|Options|
|nickname|string|null: false, unique: true|
|email|string|null: false, unique: true|
|password|string|null: false|
|password_confirmation|string|null: false|
|last_name|string|null: false|
|first_name|string|null: false|
|last_kana|string|null: false|
|first_kana|string|null: false|
|birth_year|integer|null: false|
|birth_month|integer|null: false|
|birth_day|integer|null: false|

## items table

|Column|Type|Options|
|user_id|integer|null: false, foreign_key: true|
|item_image|string|null: false|
|item_name|string|null: false|
|item_detail|text|null: false|
|category|string|null: false|
|item_status|string|null: false|
|delivery_change|string|null: false|
|Shipping_area|string|null: false|
|days_to_ship|string|null: false|
|item_price|integer|null: false|

## customers table

|item_name|string|null: false, foreign_key: true|
|purchase_date|datetime|null: false|
|customer_name|string|null: false|

## addresses table

|postal_code|integer|null: false|
|prefecture|string|null: false|
|city|string|null: false|
|street_address|string|null: false|
|building_name|string|null: false|
|phone_number|integer|null: false|

### Association
（ここに追記していく）

user has_many :items
item belongs_to :user

user has_many :customers
customer belongs_to :user

item has_one :customer
customer has_one :item

customer has_one :address
address has_one :customer