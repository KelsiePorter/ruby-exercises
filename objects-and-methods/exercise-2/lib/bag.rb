class Bag
  attr_accessor :candies

  def initialize
    @candies = []
  end

  def empty?
    if @candies.count >= 1
      return false
    else
      return true
    end
  end

  def count
    @candies.size
  end

  # def candies
  #   @candies
  # end

  def <<(candy)
    @candies << candy
  end

  def contains?(type_of_candy)
    @candies.each do |candy|
      if candy.type == type_of_candy
        return true
      else
        return false
      end
    end
  end

  def grab(type_of_candy)
    @candies.each do |candy|
      if candy.type == type_of_candy
        return @candies.delete(candy)
      end
    end
  end

  def take(number)
    removed = @candies.shift(number)
    if removed.size == 1
      return removed.first
    else
      removed
    end
  end
end
