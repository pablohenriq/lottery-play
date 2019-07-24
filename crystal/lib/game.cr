class Game
  property numbers : Array(Int32)
  property dozens : Int32
  property game_value : Float32

  def initialize
    @numbers = (1..60).to_a
    @dozens = 6
    @game_value = 3.5
  end

  def sorter
    original = numbers
    sorted = Array(Int32).new

    dozens.times do
      i = original.sample
      sorted << i
      original.delete(i)
    end

    sorted.map { |n| n < 10 ? "0#{n}" : n.to_s }
  end

  def show(games = 0)
    games.times do
      puts "---------------------------"
      puts "#{sorter.uniq.sort.join(" - ")} = #{sorter.size.to_s} numbers"
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
game.show(5)
