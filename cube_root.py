
import time
import matplotlib.pyplot as plt

def cube_root(n):
    """
    Function to find the cube root of a number using step counting.
    Returns the number of steps and time taken.
    """
    start_time = time.time()
    steps = 0
    guess = 0

    while guess ** 3 <= n:
        steps += 1
        guess += 1

    guess -= 1  # step back to last valid value
    end_time = time.time()
    duration = end_time - start_time

    print(f"Cube root of {n} is approximately {guess}")
    print(f"Steps taken: {steps}")
    print(f"Time taken: {duration:.6f} seconds")

    return steps, duration

# Graph: Steps vs Digits
steps_data = []
digit_lengths = []

for i in [10**x for x in range(1, 8)]:
    steps, _ = cube_root(i)
    steps_data.append(steps)
    digit_lengths.append(len(str(i)))

plt.figure(figsize=(8, 5))
plt.plot(digit_lengths, steps_data, marker='o')
plt.xlabel("Number of Digits in Input")
plt.ylabel("Number of Steps")
plt.title("Steps Taken vs Number of Digits (Cube Root)")
plt.grid(True)
plt.show()

# Graph: Time vs Digits
time_data = []
digit_lengths = []

for i in [10**x for x in range(1, 8)]:
    _, duration = cube_root(i)
    time_data.append(duration)
    digit_lengths.append(len(str(i)))

plt.figure(figsize=(8, 5))
plt.plot(digit_lengths, time_data, marker='o', color='orange')
plt.xlabel("Number of Digits in Input")
plt.ylabel("Time Taken (seconds)")
plt.title("Time Taken vs Number of Digits (Cube Root)")
plt.grid(True)
plt.show()
