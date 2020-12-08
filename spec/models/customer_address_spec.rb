require 'rails_helper'

RSpec.describe CustomerAddress, type: :model do
  describe '購入情報の保存' do
    before do
      @customer_address = FactoryBot.build(:customer_address)
    end

    it 'すべての値が正しく入力されていれば保存できること' do
      expect(@customer_address).to be_valid
    end
    it 'tokenが空では登録できないこと' do
      @customer_address.token = ""
      @customer_address.valid?
      expect(@customer_address.errors.full_messages).to include("Token can't be blank")
    end
    it 'postal_codeが空だと保存できないこと' do
      @customer_address.postal_code = ""
      @customer_address.valid?
      expect(@customer_address.errors.full_messages).to include("Postal code can't be blank")
    end
    it 'postal_codeが半角のハイフンを含んだ正しい形式でないと保存できないこと' do
      @customer_address.postal_code = "1234567"
      @customer_address.valid?
      expect(@customer_address.errors.full_messages).to include("Postal code is invalid")
    end
    it 'prefecture_idを選択していないと保存できないこと' do
      @customer_address.prefecture_id = 1
      @customer_address.valid?
      expect(@customer_address.errors.full_messages).to include("Prefecture must be other than 1")
    end
    it 'cityは空だと保存できないこと' do
      @customer_address.city = ""
      @customer_address.valid?
      expect(@customer_address.errors.full_messages).to include("City can't be blank")
    end
    it 'house_numberは空だと保存できないこと' do
      @customer_address.house_number = ""
      @customer_address.valid?
      expect(@customer_address.errors.full_messages).to include("House number can't be blank")
    end
    it 'building_nameは空でも保存できること' do
      @customer_address.building_name = ""
      expect(@customer_address).to be_valid
    end
    it '電話番号が空だと保存できないこと' do
      @customer_address.phone_number = ""
      @customer_address.valid?
      expect(@customer_address.errors.full_messages).to include("Phone number can't be blank")

    end
    it '電話番号がハイフン不要でないと保存できないこと' do
      @customer_address.phone_number = "000-0000-0000"
      @customer_address.valid?
      expect(@customer_address.errors.full_messages).to include("Phone number is invalid", "Phone number is too long (maximum is 11 characters)")
    end
    it '電話番号が１１桁以内でないと保存できないこと' do
      @customer_address.phone_number = "000000000000"
      @customer_address.valid?
      expect(@customer_address.errors.full_messages).to include("Phone number is invalid", "Phone number is too long (maximum is 11 characters)")
    end
  end
end