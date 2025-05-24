# --- Part 1: Writing Smart Meter Data to a File ---
smart_meter_readings = [230.5, 240.2, 235.1, 238.0, 242.7, 236.3, 239.9]

# Write data to file
with open('smart_meter_data.txt', 'w') as file:
    for reading in smart_meter_readings:
        file.write(f"{reading}\n")

# --- Part 2: Reading File with Different Access Methods ---

# 1. Read entire content
with open('smart_meter_data.txt', 'r') as file:
    content = file.read()
print("Full Content:")
print(content)

# 2. Read one line
with open('smart_meter_data.txt', 'r') as file:
    first_line = file.readline()
print("First Line:", first_line.strip())

# 3. Read all lines into a list
with open('smart_meter_data.txt', 'r') as file:
    lines = file.readlines()
    readings = [float(line.strip()) for line in lines]

print("Readings from file:", readings)

# --- Part 3: Processing the Data ---
average = sum(readings) / len(readings)
print(f"Average Smart Meter Reading: {average:.2f} V")

# --- Part 4: Appending New Reading ---
with open('smart_meter_data.txt', 'a') as file:
    file.write("241.4\n")
print("Appended new reading to file.")
