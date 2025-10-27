---
title: "MIDTERM - LABORATORY TASK 2"
description: "Loops and Functions"
layout: default
---

# MIDTERM - LABORATORY TASK 2
### Loops and Functions

## Problem 1.
Create an n x n Multiplication table using **Nested FOR Loop**. The user must enter the number of rows and columns that will be displayed in the Table.

### 💻 Source Code
```python
row = int(input("Enter rows: "))  
col = int(input("Enter columns: "))  
print("\t\tMultiplication Table")  
for x in range(1, row+1):  
    for y in range(1,col+1):  
        print((x*y), end="\t")  
    print()
```
  
### 🧾 Sample Output
<div style="background-color:#1e1e1e; color:#dcdcdc; border:1px solid #333; padding:12px 15px; font-family:'Courier New', monospace; font-size:14px; line-height:1.5; overflow-y:auto;">
<pre style="margin:0; white-space:pre;">Enter rows: <span style="color:#00bcd4;">10</span>
Enter columns: <span style="color:#00bcd4;">10</span>
                Multiplication Table
1       2       3       4       5       6       7       8       9       10
2       4       6       8       10      12      14      16      18      20
3       6       9       12      15      18      21      24      27      30
4       8       12      16      20      24      28      32      36      40
5       10      15      20      25      30      35      40      45      50
6       12      18      24      30      36      42      48      54      60
7       14      21      28      35      42      49      56      63      70
8       16      24      32      40      48      56      64      72      80
9       18      27      36      45      54      63      72      81      90
10      20      30      40      50      60      70      80      90      100
</code></pre>
  </div>

<div style="background-color:#1e1e1e; color:#dcdcdc; border:1px solid #333; padding:12px 15px; font-family:'Courier New', monospace; font-size:14px; line-height:1.5; overflow-y:auto;">
<pre style="margin:0; white-space:pre;">Enter rows: <span style="color:#00bcd4;">7</span>
Enter columns: <span style="color:#00bcd4;">4</span>
                Multiplication Table
1       2       3       4
2       4       6       8
3       6       9       12
4       8       12      16
5       10      15      20
6       12      18      24
7       14      21      28
</code></pre>
  </div>
  
## Problem 2.
Create a bank program that will allow user to perform, use **Functions** as necessary.

### 💻 Source Code
```python
def show_balance():
    print("*******************")
    print("Your Balance is ",balance)
    
def deposit():
    print("*******************")
    depo = int(input("Enter Amount to be Deposited: "))
    return depo 
    
def withdraw():
    print("*******************")
    wit = int(input("Enter Amount to be Withdrawn: "))
    return wit  
    
balance = 0
while True:
    print("*******************")
    print("        ATM        ")
    print("*******************")
    print("1. Show Balance")
    print("2. Deposit")
    print("3. Witdraw")
    print("4. Exit")
    
    choice = int(input("Answer (1-4): "))
    if choice == 1:
        show_balance()
    elif choice == 2:
        balance += deposit()
    elif choice == 3:
        balance -= withdraw()
    elif choice == 4:
        break
    else:
        print("*******************")
        print("Invalid Input")

```
  
### 🧾 Sample Output
<div style="background-color:#1e1e1e; color:#dcdcdc; border:1px solid #333; padding:12px 15px; font-family:'Courier New', monospace; font-size:14px; line-height:1.5; overflow-y:auto;">
<pre style="margin:0; white-space:pre;">*******************
        ATM        
*******************
1. Show Balance
2. Deposit
3. Witdraw
4. Exit
Answer (1-4): <span style="color:#00bcd4;">1</span>
*******************
Your Balance is  0
*******************
        ATM        
*******************
1. Show Balance
2. Deposit
3. Witdraw
4. Exit
Answer (1-4): <span style="color:#00bcd4;">2</span>
*******************
Enter Amount to be Deposited: <span style="color:#00bcd4;">1000</span>
*******************
        ATM        
*******************
1. Show Balance
2. Deposit
3. Witdraw
4. Exit
Answer (1-4): <span style="color:#00bcd4;">1</span>
*******************
Your Balance is  1000
*******************
        ATM        
*******************
1. Show Balance
2. Deposit
3. Witdraw
4. Exit
Answer (1-4): <span style="color:#00bcd4;">3</span>
*******************
Enter Amount to be Withdrawn: <span style="color:#00bcd4;">250</span>
*******************
        ATM        
*******************
1. Show Balance
2. Deposit
3. Witdraw
4. Exit
Answer (1-4): <span style="color:#00bcd4;">1</span>
*******************
Your Balance is  750
*******************
        ATM        
*******************
1. Show Balance
2. Deposit
3. Witdraw
4. Exit
Answer (1-4): <span style="color:#00bcd4;">4</span>
</code></pre>
  </div>

---  

### Go Back To [*Main Page*](https://noeljustine.github.io/7OOP-PORTFOLIO/)
