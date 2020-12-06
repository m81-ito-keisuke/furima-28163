class CustomerAddress
  include ActiveModel::Model
  attr_accessor :item_id, :user_id, :postal_code, :prefecture_id, :city, :house_number, :building_name, :phone_number, :customer_id

  # ここにバリデーションの処理を書く
  with_options presence: true, numericality: { only_integer: true } do
    validates :item_id
    validates :user_id
  end

  with_options presence: true do
    validates :postal_code, format: { with: /\A[0-9]{3}-[0-9]{4}\z/ }, length: { maximum: 8 }
    validates :prefecture_id, numericality: { other_than: 1 }
    validates :city 
    validates :house_number
    validates :phone_number, format: { with: /\A\d{11}\z/ }, length: { maximum: 11 }    
  end

  def save
    @customer = Customer.create(item_id: item_id, user_id: user_id )
    Address.create(postal_code: postal_code, prefecture_id: prefecture_id, city: city, house_number: house_number, building_name: building_name, phone_number: phone_number, customer_id: @customer.id )
  end
end