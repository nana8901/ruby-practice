# The game class will call and use the Player class to track everyone, and what frame/turn everyone is on. 
# in a real version, it would include a question to ask how many players there are and input names, but this is simplified
class Game
  attr_reader :turns, :player1, :player2
  def initialize
    @player1 = Player.new
    @player2 = Player.new
    @turns = 1
  end
  
  def turn
    
    p "What did player1 roll?"
    pins = rand(10)
    @player1.roll(pins)
    if pins == 10 && @turns == 10
      p "Strike! You get 2 more rolls;"
    elsif pins == 10
      p "Strike!"
    else
      p "And the second roll?"
      pins2 = rand(10-pins)
      @player1.roll(pins2)
    end

    p @player1.score
    turn += 1
  end

end

class Player
  attr_reader :score
  attr_writer :score
  def initialize
    @score = 0
  end
  def roll(pins)
    @score += pins
  end
  
end
bowl = Game.new
10.times do
  bowl.turn
end