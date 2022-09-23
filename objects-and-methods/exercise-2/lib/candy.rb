class Candy
  attr_accessor :sugar

  def initialize(candy_type, sugar = 100)
    @candy_type = candy_type
    @sugar = sugar
  end

  def type
    @candy_type
  end

  # def sugar
  #   100
  # end
end
