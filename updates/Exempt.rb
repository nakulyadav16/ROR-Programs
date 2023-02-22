module Exempt 

    def check_exempt(exemted_items , item)
        return (exemted_items.any? { |word| item.include?(word) } )
    end

    def exempt_tax_calculate(price)
        return (price.to_f / 10 ).to_f
    end

    def calculate_exempt_tax(exemted_items , item , price)
        if !(exemted_items.any? { |word| item.include?(word) } )
            return (price.to_f / 10 ).to_f
        else
            return 0
        end
    end
end
