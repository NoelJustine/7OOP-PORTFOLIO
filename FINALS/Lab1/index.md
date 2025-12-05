---
title: "FINALS - LABORATORY TASK 1"
description: "Encapsulations"
layout: default
---

# FINALS - LABORATORY TASK 1
**Encapsulations**  

<br>

### INSTRUCTION
For this program, you are tasked to define the following:  

- Class - Car:  
    - Properties:  
        - **color** (type: str): Represents the color of the car.  
        - **price** (type: float): Holds the price of the car.    
        - **size** (type: str): Indicates the size of the car, where *'S'* represents small, *'M'* represents medium, and 'L' represents large.  
    - Constructor:  
        - **_init_(self, color: str, price: float, size: str)**: Initializes the car's **color**, **price**, and **size** properties. The **size** is standardized to uppercase using **size.upper()**.    
    - Methods  
        - Getter Methods:  
            - **get_color(self) -> str**: Returns the car's color.   
            - **get_price(self) -> float**: Returns the car's price.     
            - **get_size(self) -> str**: Returns the car's size.  
        - Setter Methods:  
            - **set_color(self, color: str) -> None**: Sets the car's color to the specified value.  
            - **set_price(self, price: float) -> None**: Sets the car's price to the specified value.  
            - **set_size(self, size: str) -> None**: Sets the car's size to the specified value. The size should be one of 'S' for small, 'M' for medium, or 'L' for large. Use conversion of lowercase characters to uppercase using **size. upper()**.  
        - **__str__** Method:  
            - **__str__(self) -> str**: Returns a formatted string representing the car, following the format *"Car (color) - P(price, formatted to two decimal places) - (size descriptor)"*. The size descriptor is determined based on the size character (*'small'* for *'S'*, *'medium'* for *'M'*, and *'large'* for *'L'*).  
            - Example Strings:  
                - For a red car priced at 19999.85 and of medium size: "Car (red) - P19999.85-medium"  
                - For a blue car priced at 50000.00 and large: "Car (blue) - P50000.00 - large"
             
<br>


### 💻 Source Code
```python
class Car:
    def __init__(self,color:str,price:float,size:str):
        self.__color = color
        self.__price = price
        self.__size = size.upper()

    @property
    def car_color(self):
        return self.__color
    @property
    def car_price(self):
        return self.__price
    @property
    def car_size(self):
        return self.__size

    @car_color.setter
    def car_color(self, color:str):
        self.__color = color
    @car_price.setter
    def car_price(self, price:float):
        self.__price = price
    @car_size.setter
    def car_size(self, size:str):
        self.__size = size.upper()

    def __str__(self):
        return f"Car ({self.__color})\t- P{self.__price:<10.2f}\t- {self.__size}"


if __name__ == '__main__':
    print()
    c1 = Car("Red",10000, 's')
    print(
        f"Action: Invoking the Car Class constructor using "
        f"Car(\"{c1.car_color}\", {c1.car_price:.2f}, \'{c1.car_size}\')."
    )
    print(f"Output:\n{c1}\n\n")

    c1.car_color = "Blue"
    c1.car_price = 20000
    c1.car_size = "m"
    print(
        f"Action: Invoking the Car Class constructor using "
        f"Car(\"{c1.car_color}\", {c1.car_price:.2f}, \'{c1.car_size}\')."
    )
    print(f"Output:\n{c1}\n\n")
```

<br>


### 🧾 Sample Output
<div style="background-color:#1e1e1e; color:#dcdcdc; border:1px solid #333; padding:12px 15px; font-family:'Courier New', monospace; font-size:14px; line-height:1.5; overflow-y:auto;">
<pre style="margin:0; white-space:pre;">Action: Invoking the Car Class constructor using Car("Red", 10000.00, 'S').
Output:
Car (Red)       - P10000.00     - S


Action: Invoking the Car Class constructor using Car("Blue", 20000.00, 'M').
Output:
Car (Blue)      - P20000.00     - M
</pre>
  </div>

<br>

### Go Back To [*Main Page*](https://noeljustine.github.io/7OOP-PORTFOLIO/)
