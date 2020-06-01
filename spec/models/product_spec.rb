require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it 'should save if all four fields are present' do
      @category = Category.create
      @product = @category.products.build(name: 'Fishing Rod', price: 12000, quantity: 3)
      @product.save!

      expect(@product.id).to be_present
    end

    it 'should have a name field' do
      @category = Category.create
      @product = @category.products.build(name: 'Fishing Rod', price: 12000, quantity: 3)
      @product.save!

      expect(@product.name).to be_present
    end

    it 'should have a price field' do
      @category = Category.create
      @product = @category.products.build(name: 'Fishing Rod', price: 12000, quantity: 3)
      @product.save!

      expect(@product.price).to be_present
    end

    it 'should have a quantity field' do
      @category = Category.create
      @product = @category.products.build(name: 'Fishing Rod', price: 12000, quantity: 3)
      @product.save!

      expect(@product.quantity).to be_present
    end

    it 'should have a category field' do
      @category = Category.create
      @product = @category.products.build(name: 'Fishing Rod', price: 12000, quantity: 3)
      @product.save!

      expect(@product.category).to be_present
    end
  end
end
