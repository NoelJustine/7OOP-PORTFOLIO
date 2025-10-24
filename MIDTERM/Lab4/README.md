### 💻 Source Code
<div style="background-color:#1e1e1e; color:#dcdcdc; padding:15px; border-radius:8px; overflow-y:auto; height:100px;">

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
  
</div> 
