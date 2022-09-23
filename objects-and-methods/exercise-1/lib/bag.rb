class Bag
  attr_accessor :candies

  def initialize
    @candies = []
  end

  def empty?
    if @candies.size >= 1
      false
    else
      true
    end
  end

  def count
    @candies.size
  end

  # def candies
  #   @candies
  # end

  def place_candy(a_candy)
    @candies << a_candy
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

  def remove_candy
    @candies.pop
  end
end
