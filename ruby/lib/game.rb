# Game
class Game
  attr_accessor :numbers
  attr_accessor :dozens

  def initialize
    @numbers = 0
    @dozens  = 0
    @game_value = 0
  end

  def sorter
    original = (1..numbers).to_a
    sorted = []

    dozens.times do
      i = original.sample
      sorted << i
      original.delete(i)
    end
    sorted.map { |n| n < 10 ? "0#{n}" : n.to_s }
  end

  def show(games = 0)
    games.times do
      puts '---------------------------'
      puts sorter.uniq.sort.join(' - ') + " = #{sorter.size} numeros"
    end
    cost(games)
  end

  def cost(qtd)
    puts '==========================='
    puts "Total: R$ #{format('%.2f', (qtd * @game_value)).to_s.tr('.', ',')}"
    puts '==========================='
  end
end
