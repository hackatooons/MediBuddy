from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
from models.predict import HeartPatient, BreastCancerPatient
import numpy as np
import pickle
from keras.models import load_model

app = FastAPI()
origins = ["*"]
app.add_middleware(
    CORSMiddleware,
    allow_origins=origins,
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)


@app.get("/")
def read_root():
    return {"msg": "Welcome to home route"}


@app.post("/predict_heart_disease")
def predict_heart_disease(input: HeartPatient):
    input = dict(input)
    float_features = [float(x) for x in input.values()]
    final = [np.array(float_features)]
    model = pickle.load(
        open('controllers/modelhrt.pkl', 'rb'))
    prediction = model.predict_proba(final)
    output = '{0:.{1}f}'.format((prediction[0][1]*100), 2)
    return {"prediction": output}


@app.post("/predict_breast_cancer")
def predict_heart_disease(input: BreastCancerPatient):
    input = dict(input)
    float_features = [float(x) for x in input.values()]
    final = np.array(float_features).reshape(1, -1)
    model = load_model('controllers/breast_cancer.h5')
    prediction = model.predict(final)
    output = '{0:.{1}f}'.format((prediction[0][0]*100), 2)
    return {"prediction": output}
