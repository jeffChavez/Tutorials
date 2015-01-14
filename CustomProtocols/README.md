Tutorials
=========

Custom protocols can be used to pass data around in your app. In this project we are passing some text backward in our stack from `SecondViewController` to `ViewController`. Look for the green comments, they will show the order of operations for creating custom protocols.

Step 1 : set up the protocol in the view controller that is passing the data
Step 2 : create a delegate property in the view controller that is passing the data
Step 3 : add this new protocol to the controller that will be receiving the data
Step 4 : assign this new protocol to self
Step 5 : conform to the protocol in the in the receiving view controller
Step 5 : call the protocol method on the delegate property