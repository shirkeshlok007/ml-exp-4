from fastapi import FastAPI
import pickle
import numpy as np

app = FastAPI()

# Load the trained model
model = pickle.load(open("model/model.pkl", "rb"))

@app.get("/")
def home():
    return {"message": "ML FastAPI Running"}

@app.post("/predict")
def predict(data: list):
    
    prediction = model.predict([data])
    
    return {"prediction": prediction.tolist()}