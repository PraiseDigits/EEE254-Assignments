# Example: LEGB Scope Demonstration

# Global variable
x = 10

def outer():
    x = 20  # Enclosing scope

    def inner():
        x = 30  # Local scope
        print("Inner x:", x)

    inner()
    print("Outer x:", x)

outer()
print("Global x:", x)


# Example: Function call stack trace
def greet(name):
    print(f"Hello, {name}!")
    ask_age()

def ask_age():
    print("How old are you?")
    response()

def response():
    print("Just kidding, I can't hear you!")

# This function starts the call chain
greet("Praise")
