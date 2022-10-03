class Dragon
  attr_reader :name,
              :rider,
              :color

  def initialize(name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @hungry = true
    @amount_of_food = 0
  end

  def hungry?
    @hungry
  end

  def eat
    @amount_of_food += 1
    if @amount_of_food >= 3
      @hungry = false
    end
  end

end
