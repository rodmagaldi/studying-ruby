require_relative "product"
require_relative "order"
require_relative "payment"

phone = Product.new("Phone", "Phone description", ["lol", "brol"], 399.90)
car = Product.new("Car", "Car description", ["lol", "brol", "biruleibe"], 5000)

order = Order.new()
order.add_product(phone)
order.add_product(car)
p order.products()

order.pay_order(CashPayment)