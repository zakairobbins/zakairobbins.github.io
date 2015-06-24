class Hero
  attr_reader :hit_value, :defense
  attr_accessor :health
  def initialize(health, hit_value, defense)
  	@health = health
  	@hit_value = hit_value
  	@defense = defense
  end
end

class Monster
  attr_reader :hit_value, :defense
  attr_accessor :health
  def initialize(health, hit_value, defense)
  	@health = health
  	@hit_value = hit_value
  	@defense = defense
  end

  def attack(target)
  	target.health -= (@hit_value - target.defense)
  end
  
  def heal_yourself
  	@health += @health + 20
  end

end

dude = Hero.new(100, 50, 5)
wretch = Monster.new(60, 10, 3)
p dude.health
wretch.attack(dude)
p dude.health