import matplotlib.pyplot as plt
import numpy as np

# O(1) - Constant Time
def constant_function(arr):
    return arr[0]

# O(log n) - Logarithmic Time
def binary_search(arr, target):
    low, high = 0, len(arr) - 1
    while low <= high:
        mid = (low + high) // 2
        if arr[mid] == target:
            return mid
        elif arr[mid] < target:
            low = mid + 1
        else:
            high = mid - 1
    return -1

# O(n) - Linear Time
def linear_search(arr, target):
    for i in arr:
        if i == target:
            return True
    return False

# O(n log n) - Linearithmic Time
def merge_sort(arr):
    if len(arr) > 1:
        mid = len(arr) // 2
        L = arr[:mid]
        R = arr[mid:]
        merge_sort(L)
        merge_sort(R)

        i = j = k = 0
        while i < len(L) and j < len(R):
            if L[i] < R[j]:
                arr[k] = L[i]
                i += 1
            else:
                arr[k] = R[j]
                j += 1
            k += 1
        while i < len(L):
            arr[k] = L[i]
            i += 1
            k += 1
        while j < len(R):
            arr[k] = R[j]
            j += 1
            k += 1

# O(n^2) - Quadratic Time
def bubble_sort(arr):
    n = len(arr)
    for i in range(n):
        for j in range(0, n-i-1):
            if arr[j] > arr[j+1]:
                arr[j], arr[j+1] = arr[j+1], arr[j]

# O(n^k) - Polynomial Time
def polynomial_time_function(arr, k):
    count = 0
    for _ in range(k):
        for item in arr:
            count += 1
    return count

# Create animated graph for different complexity classes
n = np.linspace(1, 100, 100)

plt.figure(figsize=(10, 6))
plt.plot(n, np.ones_like(n), label="O(1) Constant")
plt.plot(n, np.log2(n), label="O(log n) Logarithmic")
plt.plot(n, n, label="O(n) Linear")
plt.plot(n, n * np.log2(n), label="O(n log n) Linearithmic")
plt.plot(n, n**2, label="O(n^2) Quadratic")
plt.plot(n, n**3, label="O(n^3) Polynomial")

plt.title("Comparison of Different Complexity Classes")
plt.xlabel("Input Size (n)")
plt.ylabel("Operations")
plt.legend()
plt.grid(True)
plt.show()
