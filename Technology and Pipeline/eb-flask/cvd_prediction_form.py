from flask_wtf import FlaskForm
from wtforms import RadioField, DecimalField, SubmitField
from wtforms.fields import html5 as h5fields
from wtforms.widgets import html5 as h5widgets
from wtforms.validators import DataRequired, NumberRange

class NameForm(FlaskForm):
    age = h5fields.DecimalField('Age:', validators=[DataRequired(), NumberRange(min=0, max=120, message="Please enter a valid age.")])
    gender = RadioField('Gender:', choices=[('1','Female'),('2','Male')])
    #BMI = h5fields.DecimalField('BMI:', places=2, validators=[DataRequired()])
    height = h5fields.DecimalField('Height (cm):', places=2, validators=[DataRequired()])
    weight = h5fields.DecimalField('Weight (kg):', places=2, validators=[DataRequired()])
    ap_hi = h5fields.DecimalField('Systolic blood pressure:', validators=[DataRequired()])
    ap_lo = h5fields.DecimalField('Diastolic blood pressure:', validators=[DataRequired()])
    cholesterol = RadioField('Cholesterol level:', choices=[('1','Normal'),('2','Above Normal'),('3','Well Above Normal')],validators=[DataRequired()])
    glucose = RadioField('Glucose Level:', choices=[('1','Normal'),('2','Above Normal'),('3','Well Above Normal')],validators=[DataRequired()])
    smoke = RadioField('Are you a smoker?', choices=[('1','Yes'),('0','No')], validators=[DataRequired()])
    alcohol = RadioField('Are you considered an alcoholic?', choices=[('1','Yes'),('0','No')], validators=[DataRequired()])
    active = RadioField('Are you physically active?', choices=[('1','Yes'),('0','No')], validators=[DataRequired()])
    submit = SubmitField('Submit')