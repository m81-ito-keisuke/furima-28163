class Item < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :status
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :delivery_change
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :ship_day

  with_options presence: true, numericality: { other_than: 1 } do
  validates :category_id
  validates :status_id
  validates :prefecture_id
  validates :delivery_change_id
  validates :ship_days_id
  end

  with_options presence: true do
    validates :image
    validates :name
    validates :detail
    validates :price, format: {with: /\A[0-9]+\z/}, numericality: {only_integer: true, greater_than_or_equal_to: 300, less_than_or_equal_to: 9999999}
  end
end