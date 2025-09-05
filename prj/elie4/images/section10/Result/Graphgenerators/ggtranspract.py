import pandas as pd
import matplotlib.pyplot as plt
import os
base_path = r"4_Report\images\section10\Result\TransAnalysis\HPF\Labkit"  # Update this to your folder path
# Frequencies and corresponding file paths
uploaded_files = {
    600: "\\600.csv",
    900: "\\900.csv",
    1000: "\\1000.csv",
    1600: "\\1600.csv",
    # Add more files here, e.g., 600: "600.csv", 1200: "1200.csv", etc.
}

# Voltage scaling based on 50 mV/div
scale_per_div =2  # volts

# Create the plot
plt.figure(figsize=(12, 6))

for freq, filename in uploaded_files.items():
    if not os.path.exists(base_path+filename):
        print(f"File not found: {base_path+filename}")
        continue

    # Read the CSV
    df = pd.read_csv(base_path+filename)
    df.columns = ['Index', 'Voltage']

    # Convert index to time (assuming 1 µs per sample)
    df['Time'] = df['Index'] * 1e-6

    # Scale voltage from divisions to volts
    df['Voltage'] *= scale_per_div

    # Plot the signal
    plt.plot(df['Time'], df['Voltage'], label=f"{freq}")

# Final plot settings
plt.title("HPF Output Signals at Different Frequencies (Red Pitaya Transient Analysis)")
plt.xlabel("Time/s")
plt.ylabel("Voltage/V")
plt.grid(True, linestyle='--', linewidth=0.5)
plt.legend(title="Frequency/Hz", loc="upper left")
plt.xlim(0.0, 0.00095)
plt.tight_layout()
plt.show()
