# Game
class Game
  attr_accessor :numbers

  def initialize
    @numbers = (1..60).to_a.map(&:to_s)
  end

  def sorter
    original = numbers
    sorted = []

    6.times do
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
    puts "Total: R$ #{format('%.2f', (qtd * 3.50)).to_s.tr('.', ',')}"
    puts '==========================='
  end
end
