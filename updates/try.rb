require_relative 'Exempt'
require_relative 'input' 
require_relative 'output'
require_relative 'import'

class Try
    include Exempt
include Input
include Output 
include Import
# print_output({'a' => 10 , 'b' => 20} , 20)
end

# puts Try.new.exempt_tax_calculate(10)
# puts Try.new .check_exempt(["nakul", "yadav"] , "hi i am")
# arr= []
# arr = Try.new.add_items
# puts arr

# puts Try.new.print_output({'a' => 10 , 'b' => 20} , 20)

# puts Try.new.check_import("haan mai nhi  hoon")
# puts Try.new.import_tax_calculate(10)
# puts Try.new.calculate_exempt_tax(["nakul" , "hii"], "hello i am" , 10)
puts Try.new.calculate_import_tax("hii i am imported" , 100)