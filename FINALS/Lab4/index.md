---
title: "FINALS - LABORATORY TASK 4"
description: "Python GUI using TKINTER"
layout: default
---

# Finals Lab Task 4. 
**Python GUI using TKINTER**


<br>


## Instruction

**READ AND UNDERSTAND THE PROBLEM FIRST BEFORE DOING THE PROGRAM**  
  
- Design the form below  
- **Problem Statement**: The cost of a long distance is based on the destination, the time of the day was made, as well as the distance of the call. The rates as follow:  
  

|DAYTIME CALLS|NIGHTIME CALLS|  
|:---:|:---:|  
|American Region          ₱ 50 every 3 minutes|American Region          ₱ 45 every 3 minutes|  
|Asian Region          ₱30 every 2 minutes|Asian Region          ₱ 27 every 2 minutes|  
|African Region          ₱ 40 every 3 minutes|African Region          ₱ 36 every 3 minutes|  
|European Region          ₱ 35 every 2 minutes|European Region          ₱ 30 every 2 minutes|  

  
- Make a program that will Allow the user to **Select Destination Code (between 1 – 4)** using ComboBox widget, A Time Code using radio buttons, And the Duration Of The Call in minutes and output the **TOTAL CHARGE.** 
  - Validate user inputs by using TRY EXCEPT block 
  - Only numeric values are accepted.
- **Compute Button** should compute for the **TOTAL CHARGE**.    
  - Computations should be based on the table rates shown above. (The total charge is based on Length of Calls, Destination Code and Time Code)  
  - You may use the get() method of the comboBox to capture the selected option in your comboBox  
- **Reset Button** should clear the Radio Button Selection and the Text field entries should be cleared as well  
- **About Button** should display a dialog with the message: “Hello I’m your Name”  
- See Sample Image below:

<p align="center">
<img src="https://raw.githubusercontent.com/NoelJustine/7OOP-PORTFOLIO/refs/heads/main/FINALS/Lab4/sample.jpg" alt="Sample" width="500" height="525" />
</p>
 
<br>


### 💻 Source Code  

Python File - [pythonTkinter.py](https://drive.google.com/file/d/1BN622j0vtZs2uK6seBJC41zTmgX7eeMp/view?usp=drivesdk)  
 
``` python
from tkinter import *
from tkinter import messagebox
import tkinter.ttk as ttk


class MyWindow:
    # initialized all widgets and controls
    def __init__(self, win):
        self.win = win
        self.win.geometry("1200x600")

        win.rowconfigure((0, 2), weight=1)
        win.rowconfigure(1, weight=2)
        win.columnconfigure(0, weight=2)
        win.columnconfigure((1, 2, 3), weight=2)

        frame1 = Frame(win, bg='gray92', relief=SUNKEN)
        frame1.grid(row=0, column=0, columnspan=4, sticky='nsew')

        frame1.rowconfigure((0, 1, 2, 4), weight=1)
        frame1.columnconfigure(0, weight=2)
        frame1.columnconfigure((1, 2), weight=1)

        self.lb2 = Label(
            frame1,
            text="Length of Call(in minutes):",
            bg='gray92'
        )
        self.lb3 = Label(
            frame1,
            text="Destination Code:",
            bg='gray92'
        )
        self.lb5 = Label(
            frame1,
            text="Time Code:",
            bg='gray92'
        )

        self.lb2.grid(row=0, column=0)
        self.lb3.grid(row=1, column=0)
        self.lb5.grid(row=3, column=0)

        self.time_var = StringVar()

        self.radio1 = Radiobutton(
            frame1,
            text='Day Time',
            variable=self.time_var,
            value="Day Time",
            bg='gray92'
        )
        self.radio1.grid(row=3, column=1)

        self.radio2 = Radiobutton(
            frame1,
            text='Night Time',
            variable=self.time_var,
            value="Night Time",
            bg='gray92'
        )
        self.radio2.grid(row=3, column=2)

        self.entry1 = Entry(frame1)
        self.entry1.grid(row=0, column=1, columnspan=2)

        self.combo = ttk.Combobox(frame1)
        self.combo['values'] = (
            "American Region",
            "Asian Region",
            "African Region",
            "European Region"
        )
        self.combo.grid(row=1, column=1, columnspan=2)

        self.lb1 = Label(win, text='TOTAL CHARGE:')
        self.lb1.grid(row=1, column=0, rowspan=2, sticky='nsew')

        self.text1 = Text(win, height=5, width=25)
        self.text1.grid(row=1, column=1, columnspan=3)

        self.button1 = Button(
            win,
            text='Compute Charge',
            command=self.compute_charge
        )
        self.button1.grid(row=2, column=0)

        self.button2 = Button(
            win,
            text='Reset',
            command=self.reset
        )
        self.button2.grid(row=2, column=1)

        self.button3 = Button(
            win,
            text='About',
            command=self.about
        )
        self.button3.grid(row=2, column=2)

        self.button4 = Button(
            win,
            text='Close',
            command=self.win.quit
        )
        self.button4.grid(row=2, column=3)

        self.load_rates()
        self.combo.current(0)
        self.time_var.set("")
        self.text1.delete("1.0", END)

    def load_rates(self):
        self.day_rates = {
            "American Region": 50 / 3,
            "Asian Region": 30 / 2,
            "African Region": 40 / 3,
            "European Region": 35 / 2
        }

        self.night_rates = {
            "American Region": 50 / 3,
            "Asian Region": 45 / 3,
            "African Region": 36 / 3,
            "European Region": 30 / 2
        }

    def compute_charge(self):
        try:
            duration = int(self.entry1.get())
            if duration <= 0:
                raise ValueError
        except ValueError:
            messagebox.showerror(
                "Error",
                "Please enter a valid numeric duration."
            )
            return

        destination = self.combo.get()
        time_code = self.time_var.get()

        if time_code == "":
            messagebox.showerror(
                "Error",
                "Please select a time code."
            )
            return

        if time_code == "Day Time":
            rate = self.day_rates[destination]
        else:
            rate = self.night_rates[destination]

        total_charge = duration * rate

        self.text1.delete("1.0", END)
        self.text1.insert(
            END,
            f"Duration of Call: {duration} minute(s)\n"
        )
        self.text1.insert(
            END,
            f"Destination Code: {destination}\n"
        )
        self.text1.insert(
            END,
            f"Time Code: {time_code}\n"
        )
        self.text1.insert(
            END,
            f"Total Charge is: Php {total_charge:.2f}"
        )

    def reset(self):
        self.entry1.delete(0, END)
        self.combo.current(0)
        self.time_var.set("")
        self.text1.delete("1.0", END)

    def about(self):
        messagebox.showinfo("About", "Hello! I’m Your Name.")


# test the class
if __name__ == '__main__':
    window = Tk()
    mywin = MyWindow(window)
    window.title('Hello Python')
    window.geometry("400x300+10+10")
    window.mainloop()

```


<br>
  
  
### 🧾 Sample Output

<p>
<img src="https://raw.githubusercontent.com/NoelJustine/7OOP-PORTFOLIO/refs/heads/main/FINALS/Lab4/output1.jpg" alt="Output1" width="500" height="525" hspace="10" vspace="10/>   

<img src="https://raw.githubusercontent.com/NoelJustine/7OOP-PORTFOLIO/refs/heads/main/FINALS/Lab4/output2.jpg" alt="Output2" width="50p" height="525" hspace="10" vspace="10"/>
</p>


<br>



### Go Back To [*Main Page*](https://noeljustine.github.io/7OOP-PORTFOLIO/)



