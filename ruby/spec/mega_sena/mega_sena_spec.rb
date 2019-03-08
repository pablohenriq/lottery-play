require 'mega_sena'

describe MegaSena do
  context '#initialize' do
    it 'return initial range(1..60)' do
      numeros = subject.numeros
      expect(numeros).to eq((1..60).to_a)
    end
  end
end
