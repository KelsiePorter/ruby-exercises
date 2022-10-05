class Direwolf
  attr_reader :name,
              :home,
              :size,
              :starks_to_protect,
              :hunts_white_walkers

  def initialize(name, home = "Beyond the Wall", size = "Massive")
    @name = name
    @home = home
    @size = size
    @starks_to_protect = []
    @hunts_white_walkers = true
  end

  def protects(stark)
    if @home == stark.location && @starks_to_protect.size < 2
      @starks_to_protect << stark
      stark.safe = true
    else
      "I can't protect this stark"
    end
  end

  def hunts_white_walkers?
    if @starks_to_protect.size > 0
      @hunts_white_walkers = false
    else
      @hunts_white_walkers = true
    end
  end

  def leaves(stark)
    @starks_to_protect.delete(stark)
    stark.safe = false
    return stark
  end

end
