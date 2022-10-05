class Ogre
  attr_accessor :name,
                :home,
                :encounter_counter,
                :swings

  def initialize(name, home = "Swamp")
    @name = name
    @home = home
    @encounter_counter = 0
    @swings = 0
  end

  def encounter(human)
    @encounter_counter += 1

    if @encounter_counter % 3 == 0
      human.notices_ogre = true
      # @swings += 1
      swing_at(human)
    else
      human.notices_ogre = false
    end
  end

  def swing_at(human)
    @swings += 1

    if @swings % 2 == 0
      human.knocked_out = true
    else
      human.knocked_out = false
    end
  end

  def apologize(human)
    human.knocked_out = false
  end

end
