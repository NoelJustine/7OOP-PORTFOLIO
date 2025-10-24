# MIDTERM LAB TASK 5
### Creating Class and Instantiating Objects in Pythoncts

## Problem 1. Users in Social Media

a. Create User Class with the ff: attributes (Use Constructor for this)  
    ∙ first_name  
    ∙ last_name  
    ∙ followers_count  
    ∙ friends_name [LIST]  
Note: You can make a List an attribute of a class  

b. Create the ff: methods  
    - introduce_self – which should output “ Hi I am {first_name} {last_name}  
    - view_full_profile – which outputs all the information of the user as shown below  

c. Create a separate TestUser class to test if the program is working as expected, allowing for
user input to be passed as parameters of the object. Create atleast 2 object instance to test
the class template.  

**Rubric:**
1. Completeness of the code requirements – 10  
2. Correctness of the expected input and output - 10  
3. Use of proper naming conventions – 5

### 💻 Source Code
<div style="background-color:#1e1e1e; color:#dcdcdc; padding:15px; border-radius:8px; height:175px; overflow-y:auto;">
<pre><code>class User:
    def __init__(self, first, last, followers, friends):
        self.first_name = first
        self.last_name = last
        self.followers_count = followers
        self.friends_name = friends

    def introduce_self(self):
        print(f"Hi, I am {self.first_name} {self.last_name}")

    def view_full_profile(self):
        print(
            f"Profile Name is: {self.first_name} {self.last_name} with {self.followers_count} followers"
        )
        print("Your friends are: " + ", ".join(self.friends_name))


class TestUser:
    def __init__(self):
        self.client = []

    def testing(self):
        while True:
            choice = input("Insert a Record?[y[n]: ").lower()
            if choice != "y":
                break

            print()
            fname = input("First Name: ")
            lname = input("Last Name: ")
            followers = input("Followers: ")
            friends = []
            while True:
                friend = input("Friends [q to quit]: ")
                if friend.lower() == "q":
                    break
                friends.append(friend)

            self.client.append(User(fname, lname, followers, friends))
            print()

    def show_records(self):
        print("Here are the Records...")
        for users in self.client:
            print()
            User.introduce_self(users)
            User.view_full_profile(users)


if __name__ == "__main__":
    test = TestUser()
    test.testing()
    test.show_records()
</code></pre>
  </div>  

### 🧾 Sample Output
<div style="background-color:#1e1e1e; color:#dcdcdc; padding:15px; border-radius:8px; height:250px; overflow-y:auto;">
<pre><code>Insert a Record?[y[n]: y<span style="color:#00ffff;">Horror</span>

First Name: <span style="color:#00ffff;">noel</span>
Last Name: <span style="color:#00ffff;">diaz</span>
Followers: <span style="color:#00ffff;">10</span>
Friends [q to quit]: <span style="color:#00ffff;">justine</span>
Friends [q to quit]: <span style="color:#00ffff;">john doe</span>
Friends [q to quit]: <span style="color:#00ffff;">q</span>

Insert a Record?[y[n]: <span style="color:#00ffff;">y</span>

First Name: <span style="color:#00ffff;">john</span>
Last Name: <span style="color:#00ffff;">doe</span>
Followers: <span style="color:#00ffff;">1000000</span>
Friends [q to quit]: <span style="color:#00ffff;">justine</span>
Friends [q to quit]: <span style="color:#00ffff;">noel</span>
Friends [q to quit]: <span style="color:#00ffff;">johny</span>
Friends [q to quit]: <span style="color:#00ffff;">q</span>

Insert a Record?[y[n]: <span style="color:#00ffff;">n</span>
Here are the Records...

Hi, I am noel diaz
Profile Name is: noel diaz with 10 followers
Your friends are: justine, john doe

Hi, I am john doe
Profile Name is: john doe with 1000000 followers
Your friends are: justine, noel, johny
</code></pre>
  </div>  
