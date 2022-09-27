class TrickOrTreater
  attr_accessor :bag,
                :sugar_level

  def initialize(costume, sugar_level = 0)
    @costume = costume
    @bag = Bag.new
    @sugar_level = sugar_level
  end

  def dressed_up_as
    @costume.style
  end

  # def bag
  #   @bag
  # end

  def has_candy?
    if @bag.empty?
      false
    else
      true
    end
    # !@bag.empty?
  end

  def candy_count
    @bag.count
  end

  def eat
    eaten_candy = @bag.take(1)
    @sugar_level += eaten_candy.sugar
  end

  # def sugar_level
  #   @sugar_level
  # end
end
