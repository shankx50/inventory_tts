require_relative '../models/inventory_list'
class MainController
  attr_reader :inventory_list

  def initialize
    @inventory_list = InventoryList.new
  end

  def main_menu
    puts "1 - List All Entries"
    puts "2 - Add Entry"
    puts "3 - Edit Entry"
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
      puts "Enter Entry Index"
      index = gets.to_i
      puts "Enter Attribute you want to change (name, count or price)"
      attribute = gets.chomp.to_s
      if(attribute == "name")
        puts "What is the new name"
        new_name = gets.chomp.to_s
        p @inventory_list.get_index(index).name = new_name
        puts "---Entry Was Edited---"
        main_menu
      elsif attribute == 'count'
        puts "What is the new count"
        new_count = gets.to_i
        p @inventory_list.get_index(index).count = new_count
        puts "---Entry Was Edited---"
        main_menu
      else
        puts "What is the new price"
        new_price = gets.to_f
        p @inventory_list.get_index(index).price = new_price
        puts "---Entry Was Edited---"
        main_menu
      end

    elsif(selection == 4)
      system "clear"
      system "exit"
    end
  end

end
