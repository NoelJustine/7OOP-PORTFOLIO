---
title: "FINALS - LABORATORY TASK 3"
description: "Polymorphism"
layout: default
---

# FINALS - LABORATORY TASK 3
**Polymorphism**  
  
  
<br>
  
  
### INSTRUCTION
**PROBLEM. Chirp and Tweet**  
Create a simple program to demonstrate basic polymorphism with bird sounds.
Class - Bird:
  - Methods:
    - **def make_sound(self) -> None**: An abstract method that represents making a
sound. It doesn't have a specific implementation in the base class **Bird**.

Class - Sparrow (extends Bird):
  - Methods:
    - **def make_sound(self) -> None**: Overrides the **make_sound** method from the
base class Bird. It prints the sound *"Chirp Chirp"* when called.

Class - Parrot (extends Bird):
  - Methods:
    - **def make_sound(self) -> None**: Overrides the **make_sound*8 method from the
base class Bird. It prints the sound *"Tweet Tweet"* when called.

Class - BirdCage:
  - Methods:
    - **def make_bird_sounds (self, birds: List) -> None**: Accepts a list of Bird objects
as input. Iterates through the list of birds and calls the **make_sound method** on
each bird to make its sound.
  
  
<br>
  
  
### 💻 Source Code
  
#### bird.py
```python
class Bird():
    def make_sound(self):
        pass
```
  
#### sparrow.py
```python
from bird import Bird

class Sparrow(Bird):
    def make_sound(self):
        print("Chirp Chirp")
```
  
#### parrot.py
```python
from bird import Bird

class Parrot(Bird):
    def make_sound(self):
        print("Tweet Tweet")
```
  
#### bird_cage.py
```python
from bird import Bird
from sparrow import Sparrow
from parrot import Parrot

class BirdCage():
    def make_bird_sound(self, birds):
        for bird in birds:
            bird.make_sound()
            
b1 = Sparrow()
b2 = Parrot()
birds = [b1, b2]

c1 = BirdCage()
c1.make_bird_sound(birds)
```
  
  
<br>
  
  
### 🧾 Sample Output
<div style="background-color:#1e1e1e; color:#dcdcdc; border:1px solid #333; padding:12px 15px; font-family:'Courier New', monospace; font-size:14px; line-height:1.5; overflow-y:auto;">
<pre style="margin:0; white-space:pre;">Chirp Chirp
Tweet Tweet
</pre>
  </div>
  
  
<br>
  
  
### Go Back To [*Main Page*](https://noeljustine.github.io/7OOP-PORTFOLIO/)
