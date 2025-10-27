---
title: "LABORATORY TASK 3"
description: "List Collections"
layout: default
---
  
**Problem 1. Using List Collection type.***  
Create a program that will allow the user to perform the following **functions**: (add, update, search, delete, display, and sort) items in a list.  

Note: You are free to decide what data you will be storing in the list and name the list based
on the type of data you wish to store.  

**[ MENU OPTIONS]**  
**1 – Add Items**  
**2 – Search for an Item**  
**3 – Remove an Item**  
**4 – View all items (Sorted either A-Z | Z -A)**  
**0 – Exit program**  

**Pick one [0 to quit]: ___**  

**Requirements:**  
1. The user can add items in the list until the user presses x to stop.  
2. The user should be able to perform **search** if an item exists – Display if found or not
found and count the number of instance in the list.  
3. The user should also be given the option to remove an item in the list – Display the
Message “Item found and deleted” once deletion is performed – else display “item
not found-deletion unsuccessful”.  
4. The user may also opt to view items in the list and display items sorted in
Ascending order.  
5. The user may opt to exit the program by typing 0
  
Note: you are free to design the interface of the program, base on the Menu options
shown.  

### 💻 Source Code
```python
def add_items():
    while True:
        print("=======================")
        print("Enter Item\nx to exit")
        item = input("Answer: ")
        if item.lower() == "x":
            print()
            print("Exiting...")
            return
        else:
            print()
            print("Item Processing...")
            items.append(item.lower())
            print("Done!")


def search_item():
    print("=======================")
    seek = input("Search ")
    print("\nSearching...")
    count = items.count(seek.lower())
    if count == 0:
        print("\nNo Item Found :(")
    else:
        print("Found It!\n")
        print(f'"{seek}" currently have {count} in the list')


def remove_item():
    print("=======================")
    remove = input("Remove ")
    count = items.count(remove.lower())
    if count == 0:
        print("Item not Found")
        print("Deletion Unsuccessful")
    else:
        print("Item Found...")
        items.remove(remove)
        print("Item Deleted")


def view_items():
    while True:
        print("=======================")
        print("View Items in...")
        print("1 - Acending Order (A-Z)")
        print("2 - Descending Order (Z-A)")
        view = int(input("Pick one: "))
        if view < 0 or view > 2:
            print("\nINVALID INPUT!")
            continue
        break
    if view == 1:
        items.sort()
    elif view == 2:
        items.sort(reverse=True)
    print("====== ITEMS LIST =====")
    for count, item in enumerate(items, start=1):
        print(f"{count:3} - {item}")


items = []
while True:
    print("======= M E N U =======")
    print("1 - Add Items")
    print("2 - Search for an Item")
    print("3 - Remove an Item")
    print("4 - View all Items")
    print("0 - Exit Program")
    print("=======================")
    choice = int(input("Pick one: "))
    if choice == 0:
        break
    elif choice == 1:
        add_items()
    elif choice == 2:
        search_item()
    elif choice == 3:
        remove_item()
    elif choice == 4:
        view_items()
    else:
        print("\nINVALID INPUT!")
``` 

### 🧾 Sample Output
<div style="background-color:#1e1e1e; color:#dcdcdc; padding:15px; border-radius:8px; font-family:'Courier New', monospace; font-size:14px; line-height:1.5;">
<pre style="margin:0;">======= M E N U =======
1 - Add Items
2 - Search for an Item
3 - Remove an Item
4 - View all Items
0 - Exit Program
=======================
Pick one: <span style="color:#00bcd4;">1</span>
=======================
Enter Item
x to exit
Answer: <span style="color:#00bcd4;">Pencil</span>
Item Processing...
Done!
=======================
Enter Item
x to exit
Answer: <span style="color:#00bcd4;">bag</span>
Item Processing...
Done!
=======================
Enter Item
x to exit
Answer: <span style="color:#00bcd4;">pencil</span>
Item Processing...
Done!
=======================
Enter Item
x to exit
Answer: <span style="color:#00bcd4;">ballpen</span>
Item Processing...
Done!
=======================
Enter Item
x to exit
Answer: <span style="color:#00bcd4;">x</span>
Exiting...
======= M E N U =======
1 - Add Items
2 - Search for an Item
3 - Remove an Item
4 - View all Items
0 - Exit Program
=======================
Pick one: <span style="color:#00bcd4;">2</span>
=======================
Search <span style="color:#00bcd4;">BAG</span>
Searching...
Found It!
"BAG" currently have 1 in the list
======= M E N U =======
1 - Add Items
2 - Search for an Item
3 - Remove an Item
4 - View all Items
0 - Exit Program
=======================
Pick one: <span style="color:#00bcd4;">3</span>
=======================
Remove <span style="color:#00bcd4;">bag</span>
Item Found...
Item Deleted
======= M E N U =======
1 - Add Items
2 - Search for an Item
3 - Remove an Item
4 - View all Items
0 - Exit Program
=======================
Pick one: <span style="color:#00bcd4;">4</span>
=======================
View Items in...
1 - Acending Order (A-Z)
2 - Descending Order (Z-A)
Pick one: <span style="color:#00bcd4;">1</span>
====== ITEMS LIST =====
  1 - ballpen
  2 - pencil
  3 - pencil
======= M E N U =======
1 - Add Items
2 - Search for an Item
3 - Remove an Item
4 - View all Items
0 - Exit Program
=======================
Pick one: <span style="color:#00bcd4;">0</span>
</code></pre>
</div>

---  

### Go Back To [*Main Page*](https://noeljustine.github.io/7OOP-PORTFOLIO/)
