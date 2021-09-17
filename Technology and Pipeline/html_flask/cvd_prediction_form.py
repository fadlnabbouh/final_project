from flask_wtf import FlaskForm
from wtforms import IntegerField, DecimalField, SubmitField
from wtforms.validators import DataRequired, NumberRange

class NameForm(FlaskForm):
    age = DecimalField('What is your age?', validators=[DataRequired(), NumberRange(min=0, max=120, message="Please enter a valid age.")])
    height = DecimalField('What is your height in centimeters?', places=2, validators=[DataRequired()])
    weight = DecimalField('What is your weight in kilograms?', places=2, validators=[DataRequired()])
    ap_hi = DecimalField('What is your systolic blood pressure?', validators=[DataRequired()])
    ap_lo = DecimalField('What is your diastolic blood pressure?', validators=[DataRequired()])
    submit = SubmitField('Submit')