# 🚀 Health Anomaly Detection System  

### **AI-Powered Health Monitoring App using Flutter, Firebase, and Machine Learning**  

---

## 📌 Overview  
This project is a **health monitoring system** that integrates **Flutter (for UI), Firebase (for authentication & database), and Machine Learning (for anomaly detection)** to analyze real-time health data from **Wear OS smartwatches**.  

Using **AI & statistical methods**, the system detects **anomalies in heart rate, blood pressure, sleep patterns, and overall health trends**, providing **insights into potential health risks** based on time-based patterns.  

---

## 🎯 Features  

✅ **User Authentication** – Secure login using **Firebase Authentication**  
✅ **User Selection Interface** – Choose from **5 users** to analyze individual health data  
✅ **Health Data Collection** – Access real-time **heart rate, blood pressure, sleep, activity, and step count** from **Google Health Connect** *(Currently, demo data is used for analysis)*  
✅ **AI-Based Anomaly Detection** – Uses **Isolation Forest & Z-score analysis** to detect **tachycardia, hypertension, irregular sleep, and more**  
✅ **Time-Based Insights** – Instead of generic alerts, the system identifies **peak hours of health anomalies** (e.g., **“Hypertension observed most around 1 PM”**)  
✅ **Interactive UI (Flutter)** – Displays **health anomalies & trends** in an **intuitive Flutter app**  
✅ **Secure Data Storage** – **Firebase Firestore** is used for **efficient & scalable health data storage**  
✅ **Future Scope** – Can be extended for **doctor consultations & emergency alerts**  

---

## 🛠️ Tech Stack  

### **👨‍💻 Frontend (Flutter)**  
- **Flutter (Dart)** – Cross-platform mobile app  
- **Flutter Health Connect Plugin** – For accessing Wear OS health data  

### **☁ Backend (Firebase + Python ML API)**  
- **Firebase Authentication** – User login  
- **Firebase Firestore** – Secure storage for health data  
- **FastAPI / Flask** – API backend for anomaly detection  

### **🧠 AI/ML (Python)**  
- **Pandas & NumPy** – Data preprocessing  
- **Scikit-learn** – **Isolation Forest algorithm** for anomaly detection  
- **SciPy (Z-score analysis)** – Detects **heart rate & blood pressure outliers**  
- **Matplotlib & Seaborn** – Visualization for model insights  

---

## 🚀 How It Works?  

### **1️⃣ User Authentication & Selection**  
- Users log in via **Firebase Authentication**  
- Select one of **five predefined users** to analyze  

### **2️⃣ Data Retrieval**  
- Health data is fetched from **Wear OS smartwatches** via **Google Health Connect API** *(Currently, demo data is used for Health & Fitness Analysis)*  
- Stored in **Firebase Firestore** for processing  

### **3️⃣ Anomaly Detection (AI Model)**  
- The **Python backend (FastAPI)** loads the trained **ML model (Isolation Forest + Z-score analysis)**  
- It **analyzes heart rate, BP, and sleep patterns** for anomalies  
- Instead of generic alerts, it provides **time-based insights** (e.g., **“High BP detected around 7:00-9:00 AM”**)  

### **4️⃣ Display Results on Flutter App**  
- The detected anomalies are displayed in a **user-friendly Flutter UI**  
- **Future scope:** **Alert notifications & doctor consultation features**  

---

## 🛠️ Installation & Setup  

### **1️⃣ Clone the Repository**  
```bash
git clone https://github.com/chandanb778/Tech_Vitals_GeekVishwa.git
cd HealthAnomalyDetection
```

### **2️⃣ Setup Backend (Python ML API)**  
```bash
cd backend
pip install -r requirements.txt
python app.py
```

### **3️⃣ Setup Frontend (Flutter App)**  
```bash
cd flutter_application_1
flutter pub get
flutter run
```

## 📌 AI & NLP Tools Used

✅ **Isolation Forest** – Detects overall anomalies in heart rate, BP, and steps  
✅ **Z-score Analysis** – Identifies outliers in heart rate and BP fluctuations  
✅ **Firebase ML (Future Scope)** – Can be integrated for predictive health analytics  

---

## 💡 Future Enhancements

✅ **Doctor Consultation Integration** – Share reports with healthcare professionals  
✅ **Emergency Alerts** – Notify family members if a critical health anomaly is detected  
✅ **More Advanced ML Models** – Implement LSTMs or Transformer-based models for improved anomaly detection  

---

## 📜 License

This project is open-source and available under the **MIT License**.  

---

## 🚀 Contributions Welcome!

Feel free to submit issues, feature requests, or PRs to enhance the project. 🙌  

---

## 🔗 GitHub Repository

[Tech Vitals - GeekVishwa](https://github.com/chandanb778/Tech_Vitals_GeekVishwa)

---

## 📧 Contact

📩 **Email:** [chandanbhirud77@gmail.com](mailto:chandanbhirud77@gm)  

🔗 **LinkedIn:** [Chandan Bhirud](https://www.linkedin.com/in/chandan-bhirud-5a370428a/)



## ✨ *Stay Healthy, Stay Aware!* 🏃‍♂️💙
