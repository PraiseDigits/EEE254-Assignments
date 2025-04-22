# Function to find the sum of digits of a number using recursion
def sum_of_digits(n):
    """
    Returns the sum of digits of a number using recursion.
    Example: 123 => 1 + 2 + 3 = 6
    """
    if n == 0:
        return 0
    else:
        return n % 10 + sum_of_digits(n // 10)

print("Sum of digits in 12345 is:", sum_of_digits(12345))


# Recursive power function: computes base^exp
def power(base, exp):
    """
    Returns base raised to the power exp using recursion.
    Example: power(2, 3) => 8
    """
    if exp == 0:
        return 1
    else:
        return base * power(base, exp - 1)

print("2 raised to power 5 is:", power(2, 5))
