from flask import Flask, request, jsonify
import os
from health_analysis import load_data, preprocess_data, deep_health_analysis
from config import GEMINI_API_KEY
import requests


app = Flask(__name__)

DATA_FOLDER = "backend"

@app.route("/users", methods=["GET"])
def get_users():
    """Fetch list of available users from CSV files."""
    users = [f.split(".")[0] for f in os.listdir(DATA_FOLDER) if f.endswith(".csv")]
    return jsonify(users)

@app.route("/anomalies", methods=["GET"])
def get_anomalies():
    """Fetch anomaly data for the selected user."""
    user_id = request.args.get("user")  # Accept user as a query parameter

    if not user_id:
        return jsonify({"error": "User ID is required"}), 400

    file_path = os.path.join(DATA_FOLDER, f"{user_id}.csv")
    if not os.path.exists(file_path):
        return jsonify({"error": "User data not found"}), 404

    try:
        df = load_data(file_path)
        df = preprocess_data(df)
        anomalies = deep_health_analysis(df)
        return jsonify(anomalies)
    except Exception as e:
        return jsonify({"error": str(e)}), 500


GEMINI_URL = f"https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash:generateContent?key={GEMINI_API_KEY}"
@app.route("/recommend", methods=["POST"])
def get_recommendations():
    """Use Gemini API (via HTTP request) to generate personalized health recommendations."""
    data = request.json
    anomalies = data.get("anomalies", [])

    if not anomalies:
        return jsonify({"recommendation": "No anomalies detected."})

    prompt = f"""Given these health anomalies detected from a smartwatch: {', '.join(anomalies)}, 
    provide 1-2 concise, practical health recommendations tailored for smartwatch users. 
    Focus on actionable lifestyle changes or habits to improve health and well-being.
    give personalized suggessions monitoring the timestamp of occurence of anomalies. give diagnosis and also treatment,
    also remove first two stars from start of statement, limit it to two statements and 100-120 words only"""

    # Gemini API request payload
    payload = {
        "contents": [{"parts": [{"text": prompt}]}]
    }

    try:
        # Send request to Gemini API
        response = requests.post(GEMINI_URL, json=payload)
        response_data = response.json()

        # Extract AI-generated recommendation
        recommendation = response_data["candidates"][0]["content"]["parts"][0]["text"]
        return jsonify({"recommendation": recommendation})

    except Exception as e:
        return jsonify({"recommendation": f"Error generating AI suggestions: {str(e)}"})


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=True)
