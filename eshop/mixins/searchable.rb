module Searchable
    def search_by_name(name)
        @catalogue.select { |product| product.name().include? name }
    end
end