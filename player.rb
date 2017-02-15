class Player

  attr_reader :name
  attr_accessor :lives

  def initialize(name, lives)
    @name = name
    @lives = lives
  end

  def dead?
    @lives == 0
  end

end