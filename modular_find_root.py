# Helper function to check if guess is good enough
def is_good_enough(guess, value, power, epsilon):
    """
    Returns True if guess^power is close enough to value.
    """
    return abs(guess**power - value) < epsilon

# Helper function to improve the guess
def improve_guess(guess, value, power):
    """
    Improves the guess using averaging method.
    """
    return ((power - 1) * guess + value / (guess**(power - 1))) / power

# Main function that uses the helpers to find the root
def find_root(value, power, epsilon):
    """
    Finds the root of a number using modularized helper functions.
    """
    guess = value / 2.0
    while not is_good_enough(guess, value, power, epsilon):
        guess = improve_guess(guess, value, power)
    return guess

# Testing the modularized find_root function
print("Approximate cube root of 27:", find_root(27, 3, 0.001))
print("Approximate 4th root of 81:", find_root(81, 4, 0.001))
