module Import 
    # take item as argument and return true if imported 
    def check_import(item)
        return (item.include?"imported")
    end

    def import_tax_calculate(price)
        return (price.to_f / 20 ).to_f
    end

    def calculate_import_tax(item , price)
        if (item.include?"imported")
            return (price.to_f / 20 ).to_f
        else
            return 0 
        end
    end

end