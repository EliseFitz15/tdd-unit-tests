require_relative '../../lib/dice.rb'

RSpec.describe Dice do
  describe '.new' do
    it 'has sides' do
      d20 = Dice.new(20)
      expect(d20.sides).to eq(20)
    end
  end

  describe '#roll' do
    context 'returns value of one side of the die' do

      it 'return a number between 1-6' do
        d6 = Dice.new(6)
        rolls = []
          1_000.times do |roll|
            rolls << d6.roll
          end
      # because of proability we can expect our rolls array to have each side option
        expect(rolls.uniq.sort).to eq([1, 2, 3, 4, 5, 6])
      end

      it 'return a number between 1-20' do
        d20 = Dice.new(20)
        rolls = []
          1_000.times do |roll|
            rolls << d20.roll
          end
        expect(rolls.uniq.sort).to eq((1..20).to_a)
      end

    end
  end
end
