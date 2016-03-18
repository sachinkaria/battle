class Player

attr_reader :name, :hp

  DEFAULT_HP = 60

  def initialize(name, hp=DEFAULT_HP)
    @name = name
    @hp = hp
  end

  def lose_hp
    @hp -= random
  end

  private

  def random
    rand(10)
  end

end
