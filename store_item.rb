item1 = {
  :name => "band shirt",
  :color => "red",
  :price => 8.99
}

item2 = {
  :name => "khaki pants",
  :color => "khaki",
  :price => 14.99
}
item3 = {
  name: "leather jacket",
  color: "black",
  price: 54.99
}
p "The #{item1[:name]} is #{item1[:color]}, and is $#{item1[:price]}"

class Item
  def initialize(name, color, price)
    @name = name
    p @name
    @color = color
    p @color
    @price = price
    p @price
  end

  def print_info
    p "#{@name} is #{@color} and costs #{@price}"
  end
end

item1 = Item.new("bike", "green", 46.99)
item1.print_info