=begin 
Complete the method/function so that it converts dash/underscore delimited words into camel casing. 
The first word within the output should be capitalized only if the original word was capitalized 
(known as Upper Camel Case, also often referred to as Pascal case). 
The next words should be always capitalized.
=end 


def to_camel_case(str)
    new_array = str.gsub("-", " ").gsub("_", " ").split(" ") #convert all dashes and underscores to spaces. 
    return '' if new_array.empty? #exit out if the given array is nil 
    new_array = new_array[0] + new_array[1..-1].map(&:capitalize).join #split the array and capitalize the cases, join
    return new_array
end


puts to_camel_case("the-stealth-warrior")
puts to_camel_case("The_Stealth_Warrior")
puts to_camel_case("The_Stealth-Warrior")
puts to_camel_case("A-B-C")
puts to_camel_case("The goose is loose")
puts to_camel_case("")
puts to_camel_case(" ")