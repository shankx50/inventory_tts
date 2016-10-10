require_relative '../models/inventory_list'
class MainController
  attr_reader :inventory_list

  def initialize
    @inventory_list = InventoryList.new
  end

  def main_menu
    puts "1 - List All Entries"
    puts "2 - Add Entry"
    # puts "3 - Enter Edit Mode"
    puts "4 - Exit Application"

    selection = gets.to_i
    puts "You picked #{selection}"

    if(selection == 1)
      @inventory_list.list_entries
      main_menu
    elsif(selection == 2)
      puts "New Entry Name:"
      name = gets.chomp
      puts "New Entry Count"
      count = gets.to_i
      puts "New Entry Price"
      price = gets.to_f
      @inventory_list.add_entry(name,count,price)
      system "clear"
      @inventory_list.list_entries
      puts "---Entry Was Added---"
      main_menu
    elsif(selection == 3)
      submenu
    elsif(selection == 4)
      system "clear"
      system "exit"
    end
  end

end
