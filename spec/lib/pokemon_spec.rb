require_relative '../../lib/pokemon.rb'

RSpec.describe Pokemon do
  describe ".new" do
    let(:pokemon) { Pokemon.new("Pikachu", "Electric", "Lightening") }

    it 'has a name' do
      expect(pokemon.name).to eq("Pikachu")
    end

    it 'has a type' do
      expect(pokemon.type).to eq("Electric")
    end

    it 'has a ability' do
      expect(pokemon.ability).to eq("Lightening")
    end

    it 'has hit_points' do
      expect(pokemon.hit_points).to eq(50)
    end

    it 'has strength' do
      expect(pokemon.strength).to be > 0
    end
  end

  describe '#train' do
    context 'pokemon strength increases with training' do
      let(:bulbasaur) { Pokemon.new("Bulbasaur", "Grass", "Poison") }

      it 'has greater strength' do
        starting_strength = bulbasaur.strength
        bulbasaur.train
        expect(bulbasaur.strength).to be > starting_strength
      end

      it 'has original strength' do
        starting_strength = bulbasaur.strength
        expect(bulbasaur.strength).to eq starting_strength
      end
    end
  end

  describe '#alive?' do
    context 'pokemon alive based on hit points' do
      let(:live_one) { Pokemon.new("Pikachu", "Electric", "Lightening", 20) }
      let(:dead_one) { Pokemon.new("Pikachu", "Electric", "Lightening", 0) }

      it 'has hit_points > 0' do
        expect(live_one.alive?).to eq(true)
      end

      it 'has hit_points <= 0' do
        expect(dead_one.alive?).to eq(false)
      end
    end
  end

  describe '#attack!' do
    context 'pokemon one attacks pokemon two and p2 hit_points lowered' do
      let(:charmander) { Pokemon.new("Charmander", "Fire", "Blaze", 50) }
      let(:psyduck) { Pokemon.new("Psyduck", "Water", "Confusion", 20) }

      it 'lowers p2 hit_points' do
        attack_strength = charmander.strength / 2
        expect(charmander.attack!(psyduck)).to eq(psyduck.hit_points - attack_strength)
      end
    end
  end

end
