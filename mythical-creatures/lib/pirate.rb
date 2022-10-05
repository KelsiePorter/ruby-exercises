class Pirate
  attr_reader :name,
              :job,
              :cursed,
              :booty

  def initialize(name, job = 'Scallywag')
    @name = name
    @job = job
    @cursed = false
    @heinous_acts_committed = 0
    @booty = 0
  end

  def cursed?
    @cursed
  end

  def commit_heinous_act
    @heinous_acts_committed += 1
    if @heinous_acts_committed > 2
      @cursed = true
    else
      @cursed = false
    end
  end

  def booty?
    @booty > 0
  end

  def rob_a_ship
    @booty += 100
  end

end
