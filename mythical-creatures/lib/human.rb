class Human
  attr_reader :name
  attr_accessor :notices_ogre,
                :knocked_out

  def initialize
    @name = "Jane"
    @notices_ogre = false
    @knocked_out = false
  end

  def notices_ogre?
    @notices_ogre
  end

  def knocked_out?
    @knocked_out
  end

end
