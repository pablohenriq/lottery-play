# MegaSena
class MegaSena
  attr_accessor :numbers

  def initialize
    @numbers = (1..60).to_a
  end

  def shuffle_numbers
    @numbers.shuffle
  end
end