module Shop
  class Basket
    attr_reader :product_id, :quantity

    def initialize(product_id:, quantity:)
      @product_id = product_id
      @quantity = quantity
    end

    def fetch_product
      FetchProduct.new.call(product_id)
    end

    def total_price
      product = fetch_product
      product.price * quantity
    end
  end
end
