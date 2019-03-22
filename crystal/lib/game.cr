class Game
  property numbers
  property dozens
  property game_value

  def initialize
    @numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60]
    @dozens = 6
    @game_value = 1.5
  end

  def sorter
    original = numbers
    sorted = Array(Int32).new

    dozens.times do
      i = original.sample
      sorted << i
      original.delete(i)
    end
    sorted#.map { |n| n < 10 ? "0#{n}" : n.to_s }
  end

  def show(games = 0)
    games.times do
      puts "---------------------------"
      # puts "#{sorter.uniq.sort.to_s} = #{sorter.size.to_s} numeros"
      puts "#{sorter} = #{sorter.size} numeros"
    end
    cost(games)
  end

  def cost(qtd)
    puts "==========================="
    puts "Total: R$ #{(qtd * @game_value).to_s}"
    puts "==========================="
  end
end

game = Game.new
game.show(10)
