module Sortable
    def sort_by_name(ascending = true)
        if ascending
            @catalogue.sort_by(&:name)
        else
            @catalogue.sort_by(&:name).reverse
        end
    end
end