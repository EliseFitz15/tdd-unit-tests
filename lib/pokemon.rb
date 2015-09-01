require_relative 'dice'

class Pokemon
  attr_reader :name, :type, :ability, :hit_points, :strength
  def initialize(name, type, ability, hit_points = 50)
    @name = name
    @type = type
    @ability = ability
    @hit_points = hit_points
    @strength = die_roll
  end

  # refactor
  def die_roll
    Dice.new(6).roll
  end

  def train
    @strength += die_roll
  end

  def alive?
    hit_points > 0
  end

  def attack!(player)
    player.hit_points - strength / 2
  end
end
