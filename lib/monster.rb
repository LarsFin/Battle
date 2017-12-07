class Monster

  DEFAULT_MONSTER_HP = 500

  attr_accessor :name, :health

  def initialize(name, health = DEFAULT_MONSTER_HP)
    @name = name
    @health = health
  end

end
