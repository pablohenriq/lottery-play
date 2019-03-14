require 'mega_sena'

describe MegaSena do
  context '#initialize' do
    it 'return initial range(1..60)' do
      expect(subject.numbers).to eq((1..60).to_a)
    end
  end

  context '#shuffle_numbers' do
    it 'the array size must be equal after shuffle' do
      expect(subject.numbers.size).to eq(subject.shuffle_numbers.size)
    end

    it 'numbers order: random is not equal original' do
      expect(subject.numbers).not_to eq(subject.shuffle_numbers)
    end
  end
end
