class Medusa
  attr_reader :name,
              :statues


  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(victim)
    if @statues.size < 3
      @statues << victim
      victim.stoned = true
    else
      old_victim = @statues.shift
      old_victim.stoned = false
      # @statues << victim
      # victim.stoned = true
      stare(victim)
    end
  end

end
