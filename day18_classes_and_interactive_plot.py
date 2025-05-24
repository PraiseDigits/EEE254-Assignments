# --- Part 1: Classes and Subclassing with Engineering Example (Sensor Readings) ---

import matplotlib.pyplot as plt
import plotly.express as px
import pandas as pd
import random

# Base class
class Sensor:
    def __init__(self, sensor_id, unit):
        self.sensor_id = sensor_id
        self.unit = unit

    def describe(self):
        return f"Sensor ID: {self.sensor_id}, Unit: {self.unit}"

# Subclass for temperature sensors
class TemperatureSensor(Sensor):
    def __init__(self, sensor_id, unit='Celsius'):
        super().__init__(sensor_id, unit)
        self.data = []

    def record(self, value):
        self.data.append(value)

    def get_data(self):
        return self.data

# Create an object and record sample data
sensor = TemperatureSensor("T-001")
for _ in range(50):
    sensor.record(round(random.uniform(20.0, 30.0), 2))

# Plot the data
plt.figure(figsize=(8, 4))
plt.plot(sensor.get_data(), marker='o')
plt.title(f"Temperature Readings from Sensor {sensor.sensor_id}")
plt.xlabel("Sample #")
plt.ylabel(f"Temperature ({sensor.unit})")
plt.grid(True)
plt.tight_layout()
plt.show()

# --- Part 2: Interactive COVID-19 Plot (Sample Dataset) ---

# Simulated COVID-19 spread data (for illustration)
covid_data = {
    "Date": pd.date_range(start="2020-03-01", periods=30),
    "USA": [100 + i*200 + random.randint(-100, 100) for i in range(30)],
    "Italy": [120 + i*180 + random.randint(-90, 90) for i in range(30)],
    "India": [50 + i*150 + random.randint(-80, 80) for i in range(30)]
}
df = pd.DataFrame(covid_data)

# Melt for plotly
df_melt = df.melt(id_vars=["Date"], var_name="Country", value_name="Cases")

# Plotly interactive plot
fig = px.line(df_melt, x="Date", y="Cases", color="Country", title="Spread of COVID-19 Cases Over Time")
fig.update_layout(hovermode="x unified")
fig.show()
