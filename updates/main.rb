require_relative 'Exempt'
require_relative 'input' 
require_relative 'output'
require_relative 'import'
require_relative 'calculate'

class Sale_tax
    # includeing all required modules
    include Exempt
    include Input
    include Output 
    include Import
    include Tax_calculation

    attr_accessor :input , :total_tax ,:exemted_items ,:list 
    
    def initialize
        @input = []
        @total_tax = 0
        @exemted_items = ["food" , "medical", "book" ,"bar" ,"headache pills" ,"chocolates" ]
        @list = {}
        @list.default = 0 
    end

    def run 
        @input = add_items
        @total_tax =  tax_calculate(@input , @list , @total_tax)
        puts "\n------------------------------------------------"
        print_output(@list , @total_tax)
    end
end

s = Sale_tax.new
s.run
