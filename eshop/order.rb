require_relative "payment"

def instantiate_class payment_type
    payment_type.new
end
    
class Order
    def initialize()
        @products = []
    end

    attr_reader :products
    attr_writer :products

    def add_product(product)
        @products.append(product)
    end

    def remove_product(product)
        @products.delete(product)
    end

    def pay_order(type)
        total_amount = @products.reduce(0) { |sum, prod| sum + prod.price }

        payment = instantiate_class type
        payment.pay(total_amount)
    end
end