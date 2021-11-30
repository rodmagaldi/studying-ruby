module Filterable
    def filter_by_category(category)
        @catalogue.select { |product| product.categories().include? category }
    end

    def filter_by_price(min, max)
        @catalogue.select { |product| product.price() >= min && product.price() <= max }
    end
end