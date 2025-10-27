---
title: "MIDTERM - LABORATORY TASK 1"
description: "Python Fundamentals"
layout: default
---

# MIDTERM - LABORATORY TASK 1
**Python Fundamentals**  
---

**PROBLEM 1.**  
Use Appropriate Escape Sequence ( \n, \t \b \ ..etc) for the problem below  
  
### 💻 Source Code
```python
print("Database Record ") 
print("\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\")
print("Name:\tJohn Doe")
print("Email:\tjohn.doe@example.com")
print("University:\tABC University\n")
```
  
### 🧾 Sample Output
<div style="background-color:#1e1e1e; color:#dcdcdc; border:1px solid #333; padding:12px 15px; font-family:'Courier New', monospace; font-size:14px; line-height:1.5; overflow-y:auto;">
<pre style="margin:0; white-space:pre;">Database Record 
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
Name:   John Doe
Email:  john.doe@example.com
University:     ABC University
</pre>
  </div>  

**PROBLEM 2.**  
Using Placeholders for Email Details: Use appropriate type specifiers %s, %d, %f etc... for this task  
  
### 💻 Source Code
```python
fname = "John" 
l1="Greeting"
l2 = "Jane"
l3 = 1.2
l4 = 10.50
l5 = 'A'
l6 = "ABCD123"
l7 = "City XYZ" 
l8 = 30
l9 = "ABC Corporation"
l10 = "www.example.com" 
l11 = "+1 123-456-789"
l12 ="Software Engineering"
l13 = "Engineering"

print(f"Dear %s, I hope this email find you well." %fname)
print("I wanted to reach out and say hello.")
print("I hope you are doing well and enjoring your day.")
print("It\'s been a while since we last spoke, and I wanted to cath up with you.")
print("Let\'s plan to meet up soon and have a great time together!")
print("Subject: %s" %l1)
print("Sender: %s" %l2)
print("Version: %.1f" %l3)
print("Discount: %.2f" %l4, end="%\n") #percentage
print("Status: %c" %l5)
print("Code: %s" %l6)
print("Location: %s" %l7) 
print("Age: %d" %l8)
print("Company: %s" %l9) 
print("Website: %s" %l10) 
print("Phone: %s" %l11)
print("Job: %s" %l12)
print("Department: %s" %l13)
``` 
  
### 🧾 Sample Output
<div style="background-color:#1e1e1e; color:#dcdcdc; border:1px solid #333; padding:12px 15px; font-family:'Courier New', monospace; font-size:14px; line-height:1.5; overflow-y:auto;">
<pre style="margin:0; white-space:pre;">Dear John, I hope this email find you well.
I wanted to reach out and say hello.
I hope you are doing well and enjoring your day.
It's been a while since we last spoke, and I wanted to cath up with you.
Let's plan to meet up soon and have a great time together!
Subject: Greeting
Sender: Jane
Version: 1.2
Discount: 10.50%
Status: A
Code: ABCD123
Location: City XYZ
Age: 30
Company: ABC Corporation
Website: www.example.com
Phone: +1 123-456-789
Job: Software Engineering
Department: Engineering
</pre>
  </div>  
  

    
**PROBLEM 3.**  
Book Reservation; Accept User Input  
  
### 💻 Source Code
```python
title = input("Enter the book title: ")
author = input("Enter the author: ")
year = input("Enter the year of publication: ")
genre = input("Enter the genre: ")
lib = input("Enter the library: ")
member_id = input("Enter your member ID: ")
return_date = input("Enter the return date: ")

print(f"You have successfully reserved the book \'{title}\' by {author}")
print(f"Year of Publication: {year}")
print(f"Genre: {genre}")
print(f"Library: {lib}")
print(f"Member ID: {member_id}")
print(f"Return Date: {return_date}")
```
  
### 🧾 Sample Output
<div style="background-color:#1e1e1e; color:#dcdcdc; border:1px solid #333; padding:12px 15px; font-family:'Courier New', monospace; font-size:14px; line-height:1.5; overflow-y:auto;">
<pre style="margin:0; white-space:pre;">Enter the book title: <span style="color:#00bcd4;">The Shining</span>
Enter the author: <span style="color:#00bcd4;">Stephen King</span>
Enter the year of publication: <span style="color:#00bcd4;">????</span>
Enter the genre: <span style="color:#00bcd4;">Horror</span>
Enter the library: <span style="color:#00bcd4;">City Library</span>
Enter your member ID: <span style="color:#00bcd4;">24-0189</span>
Enter the return date: <span style="color:#00bcd4;">08-30-2025</span>
You have successfully reserved the book 'The Shining' by Stephen King
Year of Publication: ????
Genre: Horror
Library: City Library
Member ID: 24-0189
Return Date: 08-30-2025
</pre>
  </div>  


      
**PROBLEM 4.**  
Day Identifier  
  
### 💻 Source Code
```python
day = int(input("Enter Day: "))
if day == 1:
    print("Monday")
elif day == 2:
    print("Tuesday")
elif day == 3:
    print("Wednesday")
elif day == 4:
    print("Thursday")
elif day == 5:
    print("Friday")
elif day == 6:
    print("Saturday")
elif day == 7:
    print("Sunday")
else:
    print("Invalid Input")
```
  

### 🧾 Sample Output
<div style="background-color:#1e1e1e; color:#dcdcdc; border:1px solid #333; padding:12px 15px; font-family:'Courier New', monospace; font-size:14px; line-height:1.5; overflow-y:auto;">
<pre style="margin:0; white-space:pre;">Enter Day: <span style="color:#00bcd4;">1</span>
Monday</pre>
</div>

<div style="background-color:#1e1e1e; color:#dcdcdc; border:1px solid #333; padding:12px 15px; font-family:'Courier New', monospace; font-size:14px; line-height:1.5; overflow-y:auto;">
<pre style="margin:0; white-space:pre;">Enter Day: <span style="color:#00bcd4;">5</span>
Friday
</pre>
  </div>  

<div style="background-color:#1e1e1e; color:#dcdcdc; border:1px solid #333; padding:12px 15px; font-family:'Courier New', monospace; font-size:14px; line-height:1.5; overflow-y:auto;">
<pre style="margin:0; white-space:pre;">Enter Day: <span style="color:#00bcd4;">6</span>
Saturday
</pre>
  </div>  
  
<div style="background-color:#1e1e1e; color:#dcdcdc; border:1px solid #333; padding:12px 15px; font-family:'Courier New', monospace; font-size:14px; line-height:1.5; overflow-y:auto;">
<pre style="margin:0; white-space:pre;">Enter Day: <span style="color:#00bcd4;">100</span>
Invalid Input
</pre>
  </div>  
  
---  

### Go Back To [*Main Page*](https://noeljustine.github.io/7OOP-PORTFOLIO/)

 
  
  



