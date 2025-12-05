---
title: "FINALS - LABORATORY TASK 2"
description: "Inheritance"
layout: default
---

# FINALS - LABORATORY TASK 2
**Inheritance**

<br>

### PROBLEM 
**SCHOOL PERFORMANCE**

**Note - You are to create 4 separate python files for this task:**  
- **performer.py(base class)**  
- **singer.py(sub class)**  
- **dancer.py(sub class)**  
- **test_class.py - following the required test cases**  

In a school musical performance, different types of performers participate. For this program, we will be implementing the performers.  

Base Class - Performer:  
  - Properties:  
    - **name** (type: str): Represents the name of the performer.  
    - age (type: int): Represents the age of the performer.  
  - Constructor:  
    - **__init__(self, name: str, age: int)**: Initializes the **name** and **age** properties.  
  - Getters  
    - **get_name(self) -> str**: Returns the name  
    - **get_age(self) -> int**: Returns the age
      
Subclass - Singer:  
  - Inherits From: **Performer**
  - Additional Property:
    - **vocal range** (type: str): Represents the vocal range of the singer.
  - Constructor:
    - **__init__(self, name: str, age: int, vocal range: str)**: Initializes the **name** and **age** properties by calling the parent class's constructor and sets the **vocal_range** property.  
  - Getter:  
    - **get_vocal_range (self) -> str**: Returns the vocal range of the singer.  
  - Method:    
    - **sing(self) -> None**: Prints *"{name} is singing with a {vocal_range} range."*  
   
Subclass - Dancer:  
  - Inherit From: **Performer**  
  - Additional Property:  
    - **__init__(self, name:str, age:int, dance_style: str)**: Initialize the **name** and **age**
properties by calling the parent class's constructor and sets the **dance_style** property.    
  - Getter:  
    - **get_dance_style(self) -> str**: Returns the dance style of the dancer.  
  - Methods:  
    - **dance(self) -> None**: Prints *"{name} is performing {dance_style} dance."*  
   
<br>


### 💻 Source Code
#### performer.py
```python
class Performer:
    
    def __init__(self, name, age):
        self._name = name
        self._age = age
        
    def get_name(self):
        return self._name
        
    def get_age(self):
        return self._age
```

#### singer.py
``` python
from performer import Performer

class Singer(Performer):
    
    def __init__(self, name, age, vocal_range):
        super().__init__(name, age)
        self._vocal_range = vocal_range
        
    def get_vocal_range(self):
        return self._vocal_range
        
    def sing(self):
        print(f"{self._name} is singing with {self._vocal_range} range.")
```

#### dancer.py
``` python
from performer import Performer

class Dancer(Performer):
    
    def __init__(self, name, age, dance_style):
        super().__init__(name, age)
        self._dance_style = dance_style
        
    def get_dance_style(self):
        return self._dance_style
        
    def dance(self):
        print(f"{self._name} is performing {self._dance_style} dance.")
```

#### test_class.py
``` python
from performer import Performer
from singer import Singer 
from dancer import Dancer 

if __name__ == '__main__':
    p1 = Performer("Noel", 38)
    print(f"Performer 1 - Name: {p1.get_name()}, Age: {p1.get_age()}")
    print()
    
    d1 = Dancer("Mea", 20, "Ballet")
    print(f"Dancer 1 - Name: {d1.get_name()}, Age: {d1.get_age()}")
    d1.dance()
    print()
    
    s1 = Singer("Justine", 21, "Baritone")
    print(f"Singer 1 - Name: {s1.get_name()}, Age: {s1.get_age()}")
    s1.sing()
```

<br>

### 🧾 Sample Output
<div style="background-color:#1e1e1e; color:#dcdcdc; border:1px solid #333; padding:12px 15px; font-family:'Courier New', monospace; font-size:14px; line-height:1.5; overflow-y:auto;">
<pre style="margin:0; white-space:pre;">Performer 1 - Name: Noel, Age: 38

Dancer 1 - Name: Mea, Age: 20
Mea is performing Ballet dance.

Singer 1 - Name: Justine, Age: 21
Justine is singing with Baritone range.
</pre>
  </div>

<br>

### Go Back To [*Main Page*](https://noeljustine.github.io/7OOP-PORTFOLIO/)
