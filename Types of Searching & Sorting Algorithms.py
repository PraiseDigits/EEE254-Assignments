import random
import time

# Generate 1000 random sensor readings
sensor_data = [random.randint(0, 10000) for _ in range(1000)]
target_value = sensor_data[500]  # Pick a value that definitely exists

# --- SEARCH ALGORITHMS ---

# Linear Search
def linear_search(arr, target):
    for i in range(len(arr)):
        if arr[i] == target:
            return i
    return -1

# Binary Search (requires sorted list)
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

# --- SORTING ALGORITHMS ---

# Bubble Sort
def bubble_sort(arr):
    arr = arr.copy()
    n = len(arr)
    for i in range(n):
        for j in range(0, n - i - 1):
            if arr[j] > arr[j + 1]:
                arr[j], arr[j + 1] = arr[j + 1], arr[j]
    return arr

# Selection Sort
def selection_sort(arr):
    arr = arr.copy()
    for i in range(len(arr)):
        min_idx = i
        for j in range(i + 1, len(arr)):
            if arr[j] < arr[min_idx]:
                min_idx = j
        arr[i], arr[min_idx] = arr[min_idx], arr[i]
    return arr

# Insertion Sort
def insertion_sort(arr):
    arr = arr.copy()
    for i in range(1, len(arr)):
        key = arr[i]
        j = i - 1
        while j >= 0 and key < arr[j]:
            arr[j + 1] = arr[j]
            j -= 1
        arr[j + 1] = key
    return arr

# Merge Sort
def merge_sort(arr):
    if len(arr) <= 1:
        return arr
    mid = len(arr) // 2
    L = merge_sort(arr[:mid])
    R = merge_sort(arr[mid:])
    return merge(L, R)

def merge(L, R):
    result = []
    i = j = 0
    while i < len(L) and j < len(R):
        if L[i] < R[j]:
            result.append(L[i])
            i += 1
        else:
            result.append(R[j])
            j += 1
    result.extend(L[i:])
    result.extend(R[j:])
    return result

# --- PERFORMANCE COMPARISON ---

def measure_time(func, data):
    start = time.time()
    result = func(data)
    end = time.time()
    return result, end - start

# Measure and print sorting times
for sort_func in [bubble_sort, selection_sort, insertion_sort, merge_sort]:
    _, duration = measure_time(sort_func, sensor_data)
    print(f"{sort_func.__name__}: {duration:.4f} seconds")

# Binary search requires sorted list
sorted_data = merge_sort(sensor_data)

# Measure search times
_, time_linear = measure_time(lambda x: linear_search(x, target_value), sensor_data)
_, time_binary = measure_time(lambda x: binary_search(x, target_value), sorted_data)

print(f"Linear Search Time: {time_linear:.6f} seconds")
print(f"Binary Search Time: {time_binary:.6f} seconds")
