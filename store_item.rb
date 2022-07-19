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
  def initialize(name, color, price)
    @name = name
    @color = color
    @price = price
  end

  def print_info
    p "#{@name} is #{@color} and costs #{@price}"
  end

  def name
    return @name
  end

  def color
    return @color
  end

  def price
    return @price
  end

  def name=(new_name)
    @name = new_name
  end

  def color=(new_color)
    @color = new_color
  end

  def price=(new_price)
    @price = new_price
  end

end

item1 = Item.new("bike", "green", 46.99)
item1.print_info
# puts item1.name
# item1.name= "shirt"
# puts item1.name
puts item1.price
item1.price= 19.99
puts item1.price
puts item1.name
puts item1.color