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

####Model

The **model** directly manages the data, logic and rules of the application. It usually consists of a class that contains a list of *attributes and behaviors*, as you may know. Attributes are often stored in a database and the model knows how to read or write that information. Behavior is represented by methods/functions defined within the class.

####View

The **view** contains information pertaining to how data returned by the controller is represented. Layout and style (in combination with CSS files) are defined within the view. This inventory program will not require a view since we use the command line interface to connect to the program. In web applications the view often is an HTML file with embedded templating language such as embedded-ruby, PHP or TWIG.
