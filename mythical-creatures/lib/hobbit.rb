class Hobbit
  attr_reader :name,
              :disposition,
              :age,
              :adult,
              :old,
              :has_ring,
              :is_short

  def initialize(name, disposition = "homebody")
    @name = name
    @disposition = disposition
    @age = 0
    @adult = false
    @old = false
    @has_ring = false
    @is_short = true
  end

  def celebrate_birthday
      @age += 1
  end

  def adult?
    if @age > 32
      @adult = true
    else
      false
    end
  end

  def old?
    if @age > 100
      @old = true
    else
      @old = false
    end
  end

  def has_ring?
    if @name == "Frodo"
      @has_ring = true
    else
      @has_ring = false
    end
  end

  def is_short?
    @is_short
  end

end
