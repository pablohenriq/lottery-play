require_relative 'game'

# MegaSena Class
class Quina < Game
  def initialize
    @numbers = 80
    @dozens = 5
    @game_value = 1.50
  end
end
