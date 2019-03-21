require_relative 'game'

# MegaSena Class
class MegaSena < Game
  def initialize
    @numbers = (1..60).to_a.map(&:to_s)
    @dozens = 6
    @game_value = 3.50
  end
end
