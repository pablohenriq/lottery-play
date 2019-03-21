# Game
class Game
  attr_accessor :numbers
  attr_accessor :dozens

  def initialize
    @numbers = (1..100).to_a.map(&:to_s)
    @dozens  = 10
    @game_value = 3.50
  end

  def sorter
    original = numbers
    sorted = []

    dozens.times do
      i = original.sample
      i = "0#{i}" if i.to_i < 10
      sorted << i
      original.delete(i)
    end
    sorted
  end

  def show(games = 0)
    games.times do
      puts '---------------------------'
      puts sorter.sort.join(' - ')
    end
    cost(games)
  end

  def cost(qtd)
    puts '==========================='
    puts "Total: R$ #{format('%.2f', (qtd * @game_value)).to_s.tr('.', ',')}"
    puts '==========================='
  end
end
