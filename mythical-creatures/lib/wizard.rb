class Wizard
  attr_reader :name,
              :rested

  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @rested = true
    @cast_a_spell = 0
  end

  def bearded?
    @bearded
  end

  def incantation(message)
    message = 'sudo ' + message
  end

  def rested?
    @rested
  end

  def cast
    @cast_a_spell +=1
    if @cast_a_spell >= 3
      @rested = false
    else
      @rested = true
    end
    "MAGIC MISSILE!"
  end

end
