class Centaur
  attr_accessor :name,
                :breed,
                :sick

  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @number_of_activities = 0
    @sick = false
  end

  def shoot
    return "NO!" if laying?

    if @number_of_activities < 2
      @number_of_activities += 1
      "Twang!!!"
    elsif @number_of_activities >= 2
      @cranky = true
      "NO!"
    end
  end

  def run
    return "NO!" if laying?

    if @number_of_activities < 2
      @number_of_activities += 1
      "Clop clop clop clop!"
    elsif @number_of_activities >= 2
      @cranky = true
      "NO!"
    end
  end

  def cranky?
    @cranky
  end

  def standing?
    @standing
  end

  def sleep
    if @standing
      "NO!"
    else
      @cranky = false
      @number_of_activities = 0
      "Zzzz"
    end
  end

  def lay_down
    @standing = false
  end

  def laying?
    !@standing
  end

  def stand_up
    @standing = true
  end

  def rested?
    !@cranky && @number_of_activities.zero?
  end

  def drink_a_potion
    if standing? && !rested?
      @cranky = false
      @number_of_activities = 0
    elsif standing? && rested?
      @sick = true
      "I feel sick"
    else
      "Must be standing to drink potion"
    end
  end

end
