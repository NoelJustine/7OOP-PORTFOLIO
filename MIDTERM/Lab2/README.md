### 💻 Source Code
<div style="background-color:#1e1e1e; color:#dcdcdc; padding:15px; border-radius:8px; height:250px; overflow-y:auto;">
<pre><code>
row = int(input("Enter rows: "))  
col = int(input("Enter columns: "))  
print("\t\tMultiplication Table")  
for x in range(1, row+1):  
    for y in range(1,col+1):  
        print((x*y), ent="\t")  
    print()
</code></pre>
  </div> ``` 

FOR THE NEXT ONE

### 💻 Source Code
<div style="background-color:#1e1e1e; color:#dcdcdc; padding:15px; border-radius:8px; height:250px; overflow-y:auto;">
<pre><code>

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

</code></pre>
  </div> ``` 
