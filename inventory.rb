require_relative 'controllers/main_controller'
menu = MainController.new
system "clear"
puts "Welcome to your Inventory Tracker!"

menu.main_menu
