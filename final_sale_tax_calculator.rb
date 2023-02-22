class Sale_tax
    attr_accessor :input , :total_tax ,:exemted_items ,:list 

    def add_items
        print "Nmber of items to be add : "
        no_of_items = gets.chomp.to_i
        @input = []
        no_of_items.times do |index|
            new_item = gets.chomp
            @input.append(new_item)
        end
    end 

    def tax_calculate
        @total_tax = 0
        @list = {}
        @list.default = 0
        @exemted_items = ["food" , "medical", "book" ,"bar" ,"headache pills" ,"chocolates" ]
        
        @input.each do |item|
            curr_item_array = item.split(" at ")

            # curr_item array se 1st element liya aur usko key banna diya
            @list[curr_item_array[0]] = curr_item_array[-1].to_f

            exempt =  (exemted_items.any? { |word| item.include?(word) } )
            import  = (item.include?"imported")

            curr_tax = 0
            if !exempt
                curr_tax += (curr_item_array[-1].to_f / 10 ).to_f
            end
            
            if import
                curr_tax += (curr_item_array[-1].to_f / 20 ).to_f
            end
            
            curr_tax = curr_tax.round(1)

            @list[curr_item_array[0]] = (@list[curr_item_array[0]].to_f + curr_tax).round(2)

            @total_tax = (@total_tax.to_f + curr_tax.to_f).round(2)
        end
    end

    def print_output 
        total = 0 
        puts "Output of Sale's tax is : \n\n"
        @list.each do |key , value|
            total += value.to_f
            puts key+ " : " + value.to_s
        end
        total = total.round(2)
        @total_tax = @total_tax.round(2)
        puts "Sales Tax : " +  @total_tax.to_s
        puts "Total : " + total.to_s
    end
end


# object of sales tax class is created
obj = Sale_tax.new             

# method input is called to take items 
obj.add_items

# all items which are exmeted from tax are added in exemted array
obj.exemted_items = ["food" , "medical", "book" ,"bar" ,"headache pills" ,"chocolates" ]

# tax_calculate is called which calculate tax and create list 
obj.tax_calculate


puts "----------------------------------------------------"
# final out put is printed down using print_output method 
obj.print_output
