require_relative 'game'

# MegaSena Class
class Lotofacil < Game
  def initialize
    @numbers = 25
    @dozens = 15
    @game_value = 2.50
  end
end
