require_relative "mixins/searchable.rb"
require_relative "mixins/filterable.rb"
require_relative "mixins/sortable.rb"

class Catalogue
    include Searchable
    include Filterable
    include Sortable

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
