import pandas as pd
import matplotlib.pyplot as plt
import os

# List of frequencies
frequencies = [800, 950, 1000, 1200]

# Base folder path (update this to your folder)
base_path = r"4_Report\images\section10\Result\TransAnalysis\BSF\Simulation"  # 👈 Replace with your actual path

plt.figure(figsize=(12, 6))

# Process each frequency file
for freq in frequencies:
    file_path = os.path.join(base_path, f'{freq}.csv')
    
    try:
        # Read CSV with semicolon separator
        df = pd.read_csv(file_path, sep=';', engine='python')

        # Rename columns for consistency
        df = df.rename(columns={
            df.columns[0]: 'Time',
            df.columns[1]: 'Voltage'
        })

        # Drop NaN and convert to numeric
        df = df[['Time', 'Voltage']].apply(pd.to_numeric, errors='coerce').dropna()

        # Plot the signal
        plt.plot(df['Time'], df['Voltage'], label=f'{freq} Hz')

    except FileNotFoundError:
        print(f"❌ File not found: {file_path}")
    except Exception as e:
        print(f"⚠️ Error reading {file_path}: {e}")

# Plot formatting
plt.title('Transient Response of BSF for Different Frequencies')
plt.xlabel('Time/s')
plt.ylabel('Voltage/V')
plt.grid(True, linestyle='--', linewidth=0.5)
plt.legend(title='Frequency', loc= "upper left")
plt.xlim(0.0089, 0.011)
plt.tight_layout()
plt.show()
