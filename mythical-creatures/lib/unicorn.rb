class Unicorn
  attr_accessor :name,
                :color

  def initialize(name, color = "silver")
    @name = name
    @color = color
  end

  # def color
  #   "silver"
  # end

  def silver?
    color == "silver"
    # if @color == "silver"
    #   true
    # else
    #   false
    # end
  end

  def say(message)
    "**;* " + message + " **;*"
  end

end
