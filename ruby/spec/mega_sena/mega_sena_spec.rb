require 'mega_sena'

describe MegaSena do
  context '#initialize' do
    it 'return initial range(1..60)' do
      n = subject.numbers
      expect(n).to eq((1..60).to_a)
    end
  end
end
