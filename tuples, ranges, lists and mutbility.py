# Tuple Example: Coordinates
location = (6.5244, 3.3792)  # Latitude and Longitude
print("Location coordinates:", location)

# Trying to modify a tuple will cause an error
# location[0] = 7.0000  # Uncommenting this will raise TypeError


# Range Example: Looping through numbers
for num in range(5):
    print("Number from range:", num)

# Note: Range itself is immutable; cannot modify like a list.


# List Example: Managing a list of student names
students = ["John", "Mary", "Praise"]
print("Original students list:", students)

# Mutating the list
students.append("Grace")  # Adding a new student
print("After adding Grace:", students)

students[1] = "Mariam"  # Updating an existing student's name
print("After updating Mary to Mariam:", students)

# Lists are mutable: you can change, add, and remove elements