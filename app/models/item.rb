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
end