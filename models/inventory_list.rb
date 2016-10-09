require_relative 'entry'

class InventoryList
  attr_reader :list
  def initialize
    @list = []
    @list.push(Entry.new('Banana',23,1.72))
    @list.push(Entry.new('Orange',627,1.72))
    @list.push(Entry.new('Apple',843,1.22))
  end

  def list_entries
    @list.each{|entry| puts "#{entry.name} - Count: #{entry.count} - Unit Price: #{entry.price}"}
  end
end
