
def is_prime(n):
    """
    Function to test if a number is prime.
    Returns True if prime, False otherwise.
    """
    if n <= 1:
        return False
    if n == 2:
        return True
    if n % 2 == 0:
        return False
    
    for i in range(3, int(n ** 0.5) + 1, 2):
        if n % i == 0:
            return False
    return True

def sum_primes(start, end):
    """
    Function to find and sum all prime numbers in a given range.
    Also prints the primes found.
    """
    primes = []
    for num in range(start, end + 1):
        if is_prime(num):
            primes.append(num)
    
    print(f"Primes between {start} and {end}:")
    print(primes)
    print(f"Sum of primes: {sum(primes)}")
    return primes

# Example usage:
sum_primes(3, 1000)
