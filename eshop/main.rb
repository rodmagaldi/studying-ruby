require_relative "product"
require_relative "order"
require_relative "payment"
require_relative "catalogue"

phone = Product.new("phone", "Phone description", ["phone", "android"], 399.90)
car = Product.new("car", "Car description", ["car", "automobile"], 5000)
iphone = Product.new("iPhone", "iPhone description", ["phone", "apple"], 900)
iphone_2 = Product.new("iPhone 2", "iPhone 2 description", ["phone", "apple"], 1000)

catalogue = Catalogue.new()
catalogue.add_product(phone)
catalogue.add_product(car)
catalogue.add_product(iphone)
catalogue.add_product(iphone_2)

p catalogue.sort_by_name()
