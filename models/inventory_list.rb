require_relative 'entry'

class InventoryList < Array

  attr_reader :list
  def initialize
    @list = []
    @list.push(Entry.new('Banana',23,1.72))
    @list.push(Entry.new('Orange',627,1.72))
    @list.push(Entry.new('Apple',843,1.22))
  end

  def list_entries
    @list.each_with_index{|entry,index| p "Index:#{index} - #{entry.print}"}
  end

  def add_entry name,count,price
    @list.push(Entry.new(name,count,price))
  end

  def get_index(index)
    return @list[index]
  end
end
