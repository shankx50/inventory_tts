class Entry
  attr_accessor :name, :count, :price
  attr_reader :value

  def initialize(name, count, price)
    @name = name
    @count = count
    @price = price
  end

end
