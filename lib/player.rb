class Player

  attr_reader :name
  attr_accessor :char, :health

  def initialize(name)
    @name = name
    @char
    @health
  end

  def set_health
    case @char
    when 'templeknight'; @health = 1000
    when 'knight'; @health = 850
    when 'heroknight'; @health = 800
    end
  end

end
