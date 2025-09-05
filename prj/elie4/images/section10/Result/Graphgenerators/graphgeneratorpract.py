import pandas as pd
import matplotlib.pyplot as plt
import numpy as np

# Load the CSV file (update path as needed)
filename = r"Result\FreqAnalysis\HPF\ALSK.csv"
df = pd.read_csv(filename, usecols=[0, 1, 2])  # Comma is the default separator

# Rename columns correctly
df.columns = ['Frequency', 'Gain', 'Phase']

# Convert all to numeric and drop rows with invalid data
df = df.apply(pd.to_numeric, errors='coerce').dropna()

# Apply phase unwrapping (convert degrees to radians -> unwrap -> back to degrees)
df['Phase'] = np.unwrap(np.radians(df['Phase']))
df['Phase'] = np.degrees(df['Phase'])

# Plotting
fig, ax1 = plt.subplots(figsize=(10, 6))

# Gain plot
line1, = ax1.plot(df['Frequency'], df['Gain'], 'b-', label='Gain/dB')
ax1.set_xlabel('Frequency/Hz')
ax1.set_ylabel('Gain/dB', color='b')
ax1.set_xscale('log')
ax1.tick_params(axis='y', labelcolor='b')

# Phase plot (after unwrapping)
ax2 = ax1.twinx()
line2, = ax2.plot(df['Frequency'], df['Phase'], 'r--', label='Phase/degrees')
ax2.set_ylabel('Phase/degrees', color='r')
ax2.tick_params(axis='y', labelcolor='r')

# Combine legends
lines = [line1, line2]
labels = [line.get_label() for line in lines]
ax1.legend(lines, labels, loc='upper right')

# Title and layout
plt.title('Frequency Response of HPF ')
fig.tight_layout()
plt.grid(True, which='both', linestyle='--', linewidth=0.5)
plt.show()
