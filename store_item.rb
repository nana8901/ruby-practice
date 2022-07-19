# item1 = {
#   :name => "band shirt",
#   :color => "red",
#   :price => 8.99
# }

# item2 = {
#   :name => "khaki pants",
#   :color => "khaki",
#   :price => 14.99
# }
# item3 = {
#   name: "leather jacket",
#   color: "black",
#   price: 54.99
# }
# p "The #{item1[:name]} is #{item1[:color]}, and is $#{item1[:price]}"

class Item
  def initialize(input_hash)
    @name = input_hash[:name]
    @color = input_hash[:color]
    @price = input_hash[:price]
  end
  attr_reader :name, :color, :price
  attr_writer :name, :color, :price

  def print_info
    p "#{@name} is #{@color} and costs #{@price}"
  end

end
newitem = {:name => "bike", color:"green", price:46.99}
item1 = Item.new(newitem)
item1.print_info
# puts item1.name
# item1.name= "shirt"
# puts item1.name
puts item1.price
item1.price= 19.99
puts item1.price
puts item1.name
puts item1.color