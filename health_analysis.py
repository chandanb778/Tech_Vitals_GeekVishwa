import pandas as pd
import numpy as np
from sklearn.ensemble import IsolationForest
from scipy.stats import zscore
from collections import Counter

# Load CSV file
def load_data(file_path):
    return pd.read_csv(file_path)

# Preprocess data
def preprocess_data(df):
    df['Timestamp'] = pd.to_datetime(df['Timestamp'])
    df[['Systolic_BP', 'Diastolic_BP']] = df['Blood_Pressure'].str.split('/', expand=True).astype(float)
    df.drop(columns=['Blood_Pressure'], inplace=True)
    df['Hour'] = df['Timestamp'].dt.hour
    return df

# Find peak anomaly times
def find_peak_anomaly_times(anomalies):
    if anomalies.empty:
        return None
    counts = Counter(anomalies['Hour'])
    most_common_hours = counts.most_common()
    peak_hours = [hour for hour, count in most_common_hours if count == most_common_hours[0][1]]
    return f"{min(peak_hours)}:00 to {max(peak_hours) + 1}:00 hours"

# Analyze anomalies
def deep_health_analysis(df):
    messages = []
    df['Heart_Rate_Z'] = zscore(df['Heart_Rate'])
    
    high_heart_rate = df[df['Heart_Rate_Z'] > 2]
    low_heart_rate = df[df['Heart_Rate_Z'] < -2]

    if not high_heart_rate.empty:
        messages.append(f"⚠️ High heart rate detected around {find_peak_anomaly_times(high_heart_rate)}.")

    if not low_heart_rate.empty:
        messages.append(f"⚠️ Low heart rate detected around {find_peak_anomaly_times(low_heart_rate)}.")

    df['Systolic_BP_Z'] = zscore(df['Systolic_BP'])
    df['Diastolic_BP_Z'] = zscore(df['Diastolic_BP'])

    high_bp = df[(df['Systolic_BP_Z'] > 2) | (df['Diastolic_BP_Z'] > 2)]
    low_bp = df[(df['Systolic_BP_Z'] < -2) | (df['Diastolic_BP_Z'] < -2)]

    if not high_bp.empty:
        messages.append(f"⚠️ High blood pressure detected around {find_peak_anomaly_times(high_bp)}.")

    if not low_bp.empty:
        messages.append(f"⚠️ Low blood pressure detected around {find_peak_anomaly_times(low_bp)}.")

    features = ['Heart_Rate', 'Systolic_BP', 'Diastolic_BP']
    anomaly_detector = IsolationForest(contamination=0.05, random_state=42)
    df['Anomaly'] = anomaly_detector.fit_predict(df[features])
    anomalies = df[df['Anomaly'] == -1]

    if not anomalies.empty:
        messages.append(f"⚠️ General health anomaly detected around {find_peak_anomaly_times(anomalies)}.")

    return messages if messages else ["✅ No significant anomalies detected."]
