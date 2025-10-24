### 💻 Source Code
<div style="background-color:#1e1e1e; color:#dcdcdc; padding:15px; border-radius:8px; overflow-y:auto; height:300px;">

```python
# Lab Task 1: Example of scrollable code
from datetime import datetime

def greet_user():
    name = input("Enter your name: ")
    age = int(input("Enter your age: "))

    current_year = datetime.now().year
    birth_year = current_year - age

    print(f"\nHello, {name}!")
    print(f"You were born in {birth_year}.\n")
































# Run the program
if __name__ == "__main__":
    greet_user()
</div> ```
