# Function to calculate the n-th root of a number
def nth_root(value, n):
    """
    Returns the nth root of a given value.
    Example: nth_root(27, 3) => 3.0
    """
    return value ** (1/n)

# Test the function
print("The 4th root of 81 is:", nth_root(81, 4))


# Function to calculate Euclidean distance between two points
def euclidean_distance(x1, y1, x2, y2):
    """
    Returns the Euclidean distance between two points (x1, y1) and (x2, y2).
    Formula: sqrt((x2 - x1)^2 + (y2 - y1)^2)
    """
    distance = ((x2 - x1)**2 + (y2 - y1)**2) ** 0.5
    return distance

# Test the function
print("Distance between (2,3) and (7,8) is:", euclidean_distance(2, 3, 7, 8))
