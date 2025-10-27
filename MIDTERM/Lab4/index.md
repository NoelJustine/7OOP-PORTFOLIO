---
layout: default
title: "MIDTERM - LABORATORY TASK 4"
description: "Dictionary Collections"
---

# MIDTERM - LABORATORY TASK 4
### Dictionary Collection

## Problem 1.
Create the following UI for menu items: then allow the user to input orders
<div style="background-color:#1e1e1e; color:#dcdcdc; border:1px solid #333; padding:12px 15px; font-family:'Courier New', monospace; font-size:14px; line-height:1.5; overflow-y:auto;">
<pre style="margin:0; white-space:pre;">--------- MENU ---------
pizza     : $3.00
nachos    : $4.50
popcorn   : $6.00
fries     : $2.50
chips     : $1.00
pretzel   : $3.50
soda      : $3.00
lemonade  : $4.25
------------------------
Select and item (q to quit): <span style="color:#00bcd4;">pizza</span>
Select and item (q to quit): <span style="color:#00bcd4;">soda</span>
Select and item (q to quit): <span style="color:#00bcd4;">q</span>
------ YOUR ORDER ------
pizza soda
Total is: $6.00
</code></pre>
  </div>  
  
The user will continue to input orders until q is typed to quit. Then display the summary of
orders with the total bill.  
1. Use a dictionary (for the menu) and List (for the orders in the cart).  
2. Users may input the same item in the cart.  
3. Follw the exact format and whitespace for the menu.  
4. User input should be case insensitive.  
5. If the user inputted an item not in the Menu – it will not include it in the cart and
display “Not Available” and input another item.  
6. Create a MENU with 10 items and assign prices in Peso (php) - You may choose what
items you would like to put in your cart.  

### 💻 Source Code
```python
menus = {  
    "brew":100.00,  
    "latte":130.00,  
    "mocha":150.00,  
    "cappu":140.00,  
    "americ":100.00,  
    "macchi":120.00,  
    "drip":100.00,  
    "choc":110.00,  
    "chai":130.00,  
    "matcha":150.00  
}  
cart = []  
orders = {}  
  
print("--------------- D's Brew ---------------")  
for key, val in menus.items():  
    print(f"{key:<10}: Php {val:.2f}")  
    
print("----------------------------------------")
  
while True:  
    order = input("Select an item (q to quit): ").lower()  
    if order == "q":  
        break  
      
    if order in menus:  
        cart.append (order)  
    else:  
        print("^ ^ ^ ^ ^ ^ ^ Not Available ^ ^ ^ ^ ^ ^ ")  
  
for item in cart:  
    if item in orders:  
        orders[item] += 1  
    else:  
        orders[item] = 1  
          
print("\n-------------- YOUR ORDER --------------")  
print(f"{"Items":<10}{"QT":<5}{"Cost":<13}{"Total":<10}\n")  
  
total_final = 0  
  
for item, quantity in orders.items():  
    cost = menus[item]  
    total_cost = quantity * cost  
    total_final += total_cost  
    print(f"{item:<10}{quantity:<5}Php {cost:<9.2f}Php {total_cost:<10.2f}")  
print("----------------------------------------")      
print(f"{"TOTAL":27} Php {total_final:.2f}")  
``` 
  
### 🧾 Sample Output
<div style="background-color:#1e1e1e; color:#dcdcdc; border:1px solid #333; padding:12px 15px; font-family:'Courier New', monospace; font-size:14px; line-height:1.5; overflow-y:auto;">
<pre style="margin:0; white-space:pre;">--------------- D's Brew ---------------
brew      : Php 100.00
latte     : Php 130.00
mocha     : Php 150.00
cappu     : Php 140.00
americ    : Php 100.00
macchi    : Php 120.00
drip      : Php 100.00
choc      : Php 110.00
chai      : Php 130.00
matcha    : Php 150.00
----------------------------------------
Select an item (q to quit): <span style="color:#00bcd4;">MATCHA</span>
Select an item (q to quit): <span style="color:#00bcd4;">BREW</span>
Select an item (q to quit): <span style="color:#00bcd4;">MOCHA</span>
Select an item (q to quit): <span style="color:#00bcd4;">BREW</span>
Select an item (q to quit): <span style="color:#00bcd4;">Q</span>

-------------- YOUR ORDER --------------
Items     QT   Cost         Total

matcha    1    Php 150.00   Php 150.00
brew      2    Php 100.00   Php 200.00
mocha     1    Php 150.00   Php 150.00
----------------------------------------
TOTAL                       Php 500.00
</code></pre>
</div>

---  

### Go Back To [*Main Page*](https://noeljustine.github.io/7OOP-PORTFOLIO/)
