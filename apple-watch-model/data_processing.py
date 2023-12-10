import pandas as pd
from sklearn.cluster import KMeans
from sklearn.preprocessing import StandardScaler
import matplotlib.pyplot as plt

# Step 1: Data Preprocessing

# 1.1 Load the Data
hr_data = pd.read_csv('heart_rate/46343_heartrate.csv')
acc_data = pd.read_csv('motion/46343_acceleration.csv')
steps_data = pd.read_csv('steps/46343_steps.txt', header=None, names=['timestamp', 'steps'])

# Convert all 'timestamp' columns to the same data type (e.g., float64)
hr_data['timestamp'] = hr_data['timestamp'].astype(float)
acc_data['timestamp'] = acc_data['timestamp'].astype(float)
steps_data['timestamp'] = steps_data['timestamp'].astype(float)



# 1.2 Synchronize Data
merged_data = pd.merge_asof(hr_data.sort_values('timestamp'), 
                            acc_data.sort_values('timestamp'), on='timestamp')
merged_data = pd.merge_asof(merged_data, 
                            steps_data.sort_values('timestamp'), on='timestamp', direction='nearest')

# Step 2: Feature Engineering

window_size = 30  # Adjust based on your data's frequency

# Compute magnitude of acceleration
merged_data['acc_magnitude'] = (merged_data['x']**2 + merged_data['y']**2 + merged_data['z']**2)**0.5

# Rolling window features
merged_data['avg_hr'] = merged_data['hr'].rolling(window=window_size).mean()
merged_data['avg_acc_magnitude'] = merged_data['acc_magnitude'].rolling(window=window_size).mean()

# Step 3: Unsupervised Learning

# Select features and scale them
features = ['avg_hr', 'avg_acc_magnitude']
X = merged_data.dropna()[features]
scaler = StandardScaler()
X_scaled = scaler.fit_transform(X)



# Apply K-means clustering
kmeans = KMeans(n_clusters=5)  # Assuming 5 clusters for different sleep stages and wakefulness
# Create a new DataFrame for non-NaN rows
data_for_clustering = merged_data.dropna(subset=features)
# Assuming the reference point is '2023-01-01'
data_for_clustering['datetime'] = pd.to_datetime('2023-01-01') + pd.to_timedelta(data_for_clustering['timestamp'], unit='s')


# Apply K-means clustering
data_for_clustering['cluster'] = kmeans.fit_predict(X_scaled)


# Step 4: Interpretation

plt.scatter(data_for_clustering['datetime'], data_for_clustering['avg_hr'], c=data_for_clustering['cluster'])
plt.xlabel('Datetime')
plt.ylabel('Average Heart Rate')
plt.colorbar(label='Cluster')
plt.xticks(rotation=45)  # Rotate x-ticks for better readability
plt.tight_layout()  # Adjust layout for better fit
plt.show()

