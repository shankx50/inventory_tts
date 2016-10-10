This is an educational repository I use to help teach programming to adult learners. We'll build an inventory management program with the following features:

1. List several items
2. Allows a user to select an item and view the inventory count, change the number of the inventory, delete the item altogether, or even change the name.
3. Create a new item and give the item an inventory count, and have this item now show up in the list of items you can select.
4. Loops through until the user does not want to edit the list anymore.

## How to use this repository

I will build the program step by step using branches to organize the process.

### Branch #1: Defining the basic architecture of the program

A very popular and proven [*software architecture patter*](https://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93controller) is the **Model-View-Controller (MVC)** pattern.

####Controller

The **controller** is usually impacted first by a user/client foreign to the application. In web applications it usually is an HTTP request, and in our case, it is user input via a keyboard. The controller then decides which **models** of the application need to be engaged in order to fulfill the request. One can think of the controller as a hotel concierge who is the first point of contact for anyone entering the building. Depending on the request, the concierge knows where to send you next, or who to call.

We'll create a directory controllers and create the main controller file inside of it.

`mkdir controllers`

`touch controllers/main_controller.rb`

####Model

The **model** directly manages the data, logic and rules of the application. It usually consists of a class that contains a list of *attributes and behaviors*, as you may know. Attributes are often stored in a database and the model knows how to read or write that information. Behavior is represented by methods/functions defined within the class.

We'll use two models. One represents the inventory and another one represents a single entry.

`mkdir models`

`touch models/entry.rb`

`toch models/inventory_list.rb `

####View

The **view** contains information pertaining to how data returned by the controller is represented. Layout and style (in combination with CSS files) are defined within the view. This inventory program will not require a view since we use the command line interface to connect to the program. In web applications the view often is an HTML file with embedded templating language such as embedded-ruby, PHP or TWIG.

NB We'll also create a *runner file called inventory.rb* which we can call to start the application.

### Branch #2: Listing Items

For the purpose of this exercise, we'll start with a hard coded inventory (**Item | Count | price**)

1. Banana | 23 | 1.72
2. Orange | 627 | 0.72
3. Apple | 843 | 1.22

- Let's start by defining what a single entry is. Entry is a class with the 3 attributes name, count and price.
- In the main controller, we'll define a menu with if-else logic.
- In the inventory_list model, we'll define the list entries method.

[Commit: list items feature added]

### Branch #3: Add To List

In order to add an entry to the list, we add a new method to the InventoryList class.

		def add_entry name,count,price
    		@list.push(Entry.new(name,count,price))
  		end
  		
We also extend the menu to show that option to the used.

[Commit: add entry to list feature added]