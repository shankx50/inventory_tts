class Entry
  attr_accessor :name, :count, :price
  attr_reader :value

  def initialize(name, count, price)
    @name = name
    @count = count
    @price = price
  end

  def print
    return "#{self.name} - Count: #{self.count} - Unit Price: #{self.price}"
  end

end
