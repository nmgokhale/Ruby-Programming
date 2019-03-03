# Write a method format_name that takes in a name string and returns the name properly capitalized.
# Hint: use str.upcase and str.downcase
# "abc".upcase # => "ABC"
def format_name(name)
  names = name.split(" ")
  formatted_names = []
  names.each do |singleName|
    singleName = singleName.downcase
    singleName[0] = singleName[0].upcase
    formatted_names << singleName
  end
  return formatted_names.join(" ")
end

puts format_name("chase WILSON") # => "Chase Wilson"
puts format_name("brian CrAwFoRd scoTT") # => "Brian Crawford Scott"
