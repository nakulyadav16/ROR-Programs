module Input
    
    # create empty array and return that array 
    def add_items
        print "Nmber of items to be add : "
        input = []
        no_of_items = gets.chomp.to_i
        no_of_items.times do |index|
            new_item = gets.chomp
            input.append(new_item)
        end
        return input 
    end 
end