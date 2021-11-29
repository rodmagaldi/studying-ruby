require_relative "product"

class Catalogue
    def initialize()
        @catalogue = []
    end

    attr_reader :catalogue

    def add_product(product)
        @catalogue.append(product)
    end

    def remove_product(product)
        @catalogue.delete(product)
    end

    def get_product_by_name(name)
        @catalogue.find { |product| product.name() == name }
    end
end

phone = Product.new("Phone", "Phone description", ["lol", "brol"], 399.90)
car = Product.new("Car", "Car description", ["lol", "brol", "biruleibe"], 5000)

catalogue = Catalogue.new()
catalogue.add_product(phone)
p catalogue.catalogue()

catalogue.add_product(car)
p catalogue.catalogue()

catalogue.remove_product(phone)
p catalogue.catalogue()

p catalogue.get_product_by_name("Car")