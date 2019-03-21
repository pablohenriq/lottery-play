require_relative 'game'

# MegaSena Class
class MegaSena < Game
  def initialize
    @numbers = 60
    @dozens = 6
    @game_value = 3.50
  end
end
