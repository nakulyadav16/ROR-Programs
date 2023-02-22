module Tax_calculation
    
    def tax_calculate(input , list ,total_tax)
        input.each do |item|
            curr_item_tax = 0
            curr_item_array = item.split(" at ")
            curr_item_price = curr_item_array[-1]

             list[curr_item_array[0]] = curr_item_array[-1].to_f

            curr_item_tax += calculate_exempt_tax(exemted_items , item , curr_item_price)
            curr_item_tax += calculate_import_tax(item , curr_item_price)

            curr_item_tax = curr_item_tax.round(1)

             list[curr_item_array[0]] = ( list[curr_item_array[0]].to_f + curr_item_tax).round(2)

            total_tax = (total_tax.to_f + curr_item_tax.to_f).round(2)
        end
        return total_tax
    end

end