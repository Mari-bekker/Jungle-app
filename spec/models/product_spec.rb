require 'rails_helper'

RSpec.describe Product, type: :model do
#Method: RSpec::Rails::Matchers#be_valid
#method is true, meaning all of the ActiveModel::Validations passed and no errors exist.
  describe 'Validations' do
    it "validates that all the product fields are present" do
      category = Category.new(name: "Test Category")
      product = Product.new(name: "Test Name", price_cents: 999, quantity: 6, category: category)
      expect(category).to be_valid
      expect(product).to be_valid
    end  

    it "is not valid when name is set to nil" do
      category = Category.new(name: "Test Category")
      product = Product.new(name: nil, price_cents: 999, quantity: 6, category: category)
      expect(category).to be_valid
      expect(product).to_not be_valid
    end  

    it "is not valid when price is set to nil" do
      category = Category.new(name: "Test Category")
      product = Product.new(name: "Test Name", price_cents: nil, quantity: 6, category: category)
      expect(category).to be_valid
      expect(product).to_not be_valid
    end  

    it "is not valid when quantity is set to nil" do
      category = Category.new(name: "Test Category")
      product = Product.new(name: "Test Name", price_cents: 999, quantity: nil, category: category)
      expect(category).to be_valid
      expect(product).to_not be_valid
    end 

    it "is not valid when category is set to nil" do
      category = Category.new(name: "Test Category")
      product = Product.new(name: "Test Name", price_cents: 999, quantity: 6, category: nil)
      expect(category).to be_valid
      expect(product).to_not be_valid
    end 

  end  
end
