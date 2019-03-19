# MegaSena
class MegaSena
  attr_accessor :numbers

  def initialize
    @numbers = (1..60).to_a
  end

  def shuffle_numbers
    numbers.shuffle
  end

  def sorter
    original = shuffle_numbers
    sorted = []

    6.times do
      i = original.shuffle[0]
      sorted << i
      original.delete(i)
    end
    sorted.sort.join(' - ')
  end
end
