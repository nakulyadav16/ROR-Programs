module Output
    
    # take hash , total tax as argument and print final output 
    def print_output(list , total_tax)
        total = 0 
        puts "Output of Sale's tax is : \n\n"
        list.each do |key , value|
            total += value.to_f
            puts key+ " : " + value.to_s
        end
        total = total.round(2)
        total_tax = total_tax.round(2)
        puts "Sales Tax : " +  total_tax.to_s
        puts "Total : " + total.to_s
    end
end