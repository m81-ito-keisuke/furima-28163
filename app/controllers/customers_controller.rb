class CustomersController < ApplicationController
  before_action :set_item, only: [:index, :create]

  def index
    @customer_address = CustomerAddress.new
  end

  def create
    @customer_address = CustomerAddress.new(customer_params)
    if @customer_address.valid?
    @customer_address.save
    end
    render :index
  end

  private

  def customer_params
    params.require(:customer_address).permit(:postal_code, :prefecture_id, :city, :house_number, :building_name, :phone_number, :customer_id).merge(user_id: current_user.id, item_id: params[:item_id])
  end

  def set_item
    @item = Item.find(params[:item_id])
  end
end
