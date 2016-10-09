require_relative '../models/inventory_list'
class MainController
  attr_reader :inventory_list

  def initialize
    @inventory_list = InventoryList.new
  end

  def main_menu
    puts "1 - List all entries"
    puts "2 - Exit Application"
    selection = gets.to_i
    puts "You picked #{selection}"

    if(selection == 1)
      @inventory_list.list_entries
      main_menu
    elsif(selection == 2)
      system "clear"
      system "exit"
    end
  end
end
