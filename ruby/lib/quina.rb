require_relative 'game'

# Quina Class
class Quina < Game
  def initialize
    @numbers = (1..80).to_a.map(&:to_s)
    @dozens = 5
    @game_value = 1.50
  end
end
