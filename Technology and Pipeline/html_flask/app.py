import requests
import json
import os
import numpy as np
from flask import Flask, render_template, redirect, url_for, jsonify, request
from flask_bootstrap import Bootstrap
from config import key, connectionURL

import cvd_prediction_form

app = Flask(__name__)

# Flask-WTF requires an encryption key - the string can be anything
app.config['SECRET_KEY'] = key

# Flask-Bootstrap requires this line
Bootstrap(app)

@app.route('/', methods=['GET', 'POST'])
def index():
   form = cvd_prediction_form.NameForm()
   response = ""
   prediction = ""
   if form.validate_on_submit():
      scale_means = np.load('scaler_means.npy')
      scale_var = np.load('scaler_var.npy')

      # can implement a loop + array to clean up this block of code later.
      age = scale_data(float(form.age.data), scale_var[0], scale_means[0])
      gender = scale_data(float(form.gender.data), scale_var[1], scale_means[1])
      BMI = scale_data(float(form.BMI.data), scale_var[2], scale_means[2])
      ap_hi = scale_data(float(form.ap_hi.data), scale_var[3], scale_means[3])
      ap_lo = scale_data(float(form.ap_lo.data), scale_var[4], scale_means[4])
      cholesterol = scale_data(float(form.cholesterol.data),scale_var[5],scale_means[5])
      glucose = scale_data(float(form.glucose.data),scale_var[6],scale_means[6])
      smoke = scale_data(float(form.smoke.data),scale_var[7],scale_means[7])
      alcohol = scale_data(float(form.alcohol.data),scale_var[8],scale_means[8])
      active = scale_data(float(form.active.data),scale_var[9],scale_means[9])

      # will clean up connection string as well.
      response = requests.get(url=connectionURL+str(age)+","+str(gender)+","+str(BMI)+","+str(ap_hi)+","+str(ap_lo)+","+str(cholesterol)+","+str(glucose)+","+str(smoke)+","+str(alcohol)+","+str(active))
      responseJson = json.loads(json.dumps(response.json()))
      prediction = responseJson['result'] 
              
   return render_template('index.html', form=form, message=prediction)

def scale_data(data,scale_var,scale_means):
   print ((data-scale_means)/scale_var)
   return (data-scale_means)/scale_var
   
if __name__ == "__main__":
   app.run(debug=True)
