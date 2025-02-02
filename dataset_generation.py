import numpy as np
import pandas as pd
import random
from datetime import datetime, timedelta

# Function to generate synthetic data for a single user
def generate_user_data(user_id, start_date, days=7):
    data = []
    timestamp = datetime.strptime(start_date, "%Y-%m-%d %H:%M:%S")
    end_date = timestamp + timedelta(days=days)
    
    while timestamp < end_date:
        # Simulating irregular sleep cycles
        hour = timestamp.hour
        if hour in range(0, 6):  # Midnight to early morning (varied sleep patterns)
            activity = random.choice(["Sleeping", "Awake", "Deep Sleep", "REM"])
            heart_rate = np.random.randint(50, 70) if activity == "Sleeping" else np.random.randint(60, 85)
            oxygen_level = np.random.randint(94, 99)
            blood_pressure = f"{np.random.randint(100, 120)}/{np.random.randint(65, 80)}"
        elif hour in range(6, 9):  # Morning routines
            activity = random.choice(["Walking", "Sitting", "Running"])
            heart_rate = np.random.randint(70, 120)
            oxygen_level = np.random.randint(95, 100)
            blood_pressure = f"{np.random.randint(110, 130)}/{np.random.randint(70, 85)}"
        elif hour in range(9, 18):  # Work hours
            activity = random.choice(["Sitting", "Standing", "Walking", "Light Exercise"])
            heart_rate = np.random.randint(60, 100)
            oxygen_level = np.random.randint(96, 100)
            blood_pressure = f"{np.random.randint(110, 130)}/{np.random.randint(70, 85)}"
        else:  # Evening/Night routines
            activity = random.choice(["Relaxing", "Walking", "Gym Workout", "Watching TV"])
            heart_rate = np.random.randint(65, 110)
            oxygen_level = np.random.randint(95, 100)
            blood_pressure = f"{np.random.randint(110, 130)}/{np.random.randint(70, 85)}"

        # Simulating step count and calories burned
        step_count = np.random.randint(0, 500) if activity in ["Sitting", "Sleeping"] else np.random.randint(500, 5000)
        calories_burned = round(step_count * 0.04, 2)
        
        # Introducing anomalies (stress spikes or irregularities)
        if random.random() < 0.02:  # 2% chance of anomaly occurrence
            heart_rate += np.random.randint(10, 30)  # Stress event
            blood_pressure = f"{np.random.randint(130, 150)}/{np.random.randint(85, 100)}"
            activity = "Stress Event"
        
        data.append([user_id, timestamp, activity, heart_rate, oxygen_level, blood_pressure, step_count, calories_burned])
        timestamp += timedelta(minutes=random.choice([1, 5, 10]))  # Randomizing interval
    
    return data

# Generate data for multiple users
num_users = 10
start_date = "2025-01-01 00:00:00"
users_data = []

for user in range(1, num_users + 1):
    user_data = generate_user_data(f"User_{user:03}", start_date)
    df = pd.DataFrame(user_data, columns=["User_ID", "Timestamp", "Activity", "Heart_Rate", "Oxygen_Level", "Blood_Pressure", "Step_Count", "Calories_Burned"])
    df.to_csv(f"User_{user:03}.csv", index=False)
    users_data.append(df)

print("Synthetic datasets generated for multiple users!")