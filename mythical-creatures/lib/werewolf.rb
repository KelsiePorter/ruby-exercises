class Werewolf
  attr_reader :name,
              :location,
              :eaten_victims

  def initialize(name, location = "London")
    @name = name
    @location = location
    @human = true
    @hungry = false
    @eaten_victims = []
  end

  def human?
    @human
  end

  def change!
    @human = !@human
  end

  def wolf?
    !@human
  end

  def hungry?
    if wolf? && @eaten_victims.size == 0
      @hungry = true
    elsif wolf? && @eaten_victims.size >= 1
      @hungry = false
    else
      @hungry = false
    end
  end

  def eat_victim(victim)
    if wolf?
      @eaten_victims << victim
      @hungry = false
      victim.status = :dead
    else
      "No canniblism!"
    end
  end

end
