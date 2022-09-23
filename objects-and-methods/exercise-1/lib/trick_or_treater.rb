class TrickOrTreater
  attr_accessor :bag

  def initialize(costume)
    @costume = costume
    @bag = Bag.new
  end

  def dressed_up_as
    @costume.style
  end

  def has_candy?
    if @bag.count >= 1
      return true
    else
      return false
    end
  end

  def candy_count
    @bag.count
  end

  def eat
    @bag.remove_candy
  end

end
