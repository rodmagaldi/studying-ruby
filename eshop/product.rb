class Product
    def initialize(name, description, categories, price)
        @name = name
        @description = description
        @categories = categories
        @price = price
    end

    def to_s()
        "#{@name}: #{@description}"
    end

    attr_reader :name, :categories, :price
end