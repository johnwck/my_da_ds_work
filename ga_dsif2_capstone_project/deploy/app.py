from pickle import load
import pandas as pd
import copy
from flask import Flask, render_template, request

app = Flask(__name__)

@app.route('/', methods=['GET', 'POST'])
def form():
    return render_template('form.html')

@app.route('/result', methods=['GET', 'POST'])
def result():

    # Set up function to scale transform user's input
    def scale_transform(to_scale, to_scale_fit_transform):
        temp_df = []
        temp_df = to_scale_fit_transform.transform(to_scale)
        temp_df = pd.DataFrame(temp_df, columns=to_scale.columns)
        to_scale = copy.deepcopy(temp_df)
        return to_scale

    # Load logistic regression with regularisation model
    # Load impute fit_transform if needed
    # Load scale fit_transform
    lrr_model = load(open('model_log_reg_regz.pkl', 'rb'))
#    lrr_impute = load(open('impute_fit_transform.pkl', 'rb'))
    lrr_scale = load(open('scale_fit_transform.pkl', 'rb'))

    # make dataframe
    X_given = pd.DataFrame(columns=lrr_model.params.index)

    # transfer user's input to dataframe
    X_given.loc[0, 'const'] = lrr_model.params.values[0]
    X_given.loc[0, 'bicarbonate'] = request.form['bicarbonate']
    X_given.loc[0, 'urine_output'] = request.form['urine_output']
    X_given.loc[0, 'urea_nitrogen'] = request.form['urea_nitrogen']
    X_given.loc[0, 'leucocyte'] = request.form['leucocyte']
    X_given.loc[0, 'blood_calcium'] = request.form['blood_calcium']
    X_given.loc[0, 'renal_failure'] = request.form['renal_failure']
    X_given.loc[0, 'heart_rate'] = request.form['heart_rate']
    X_given.loc[0, 'deficiencyanemias'] = request.form['deficiencyanemias']
    X_given.loc[0, 'atrialfibrillation'] = request.form['atrialfibrillation']
    X_given.loc[0, 'sp_o2'] = request.form['sp_o2']

    # scale before predict probability of dying
    X_given_scale = scale_transform(X_given.drop(columns=['const']), lrr_scale)

    # predict probability of dying
    X_given_scale['const'] = lrr_model.params.values[0]
    y_predicted = lrr_model.predict(X_given_scale)[0]

    return render_template('result.html',
        bicarbonate=request.form['bicarbonate'],
        urine_output=request.form['urine_output'],
        urea_nitrogen=request.form['urea_nitrogen'],
        leucocyte=request.form['leucocyte'],
        blood_calcium=request.form['blood_calcium'],
        renal_failure=request.form['renal_failure'],
        heart_rate=request.form['heart_rate'],
        deficiencyanemias=request.form['deficiencyanemias'],
        atrialfibrillation=request.form['atrialfibrillation'],
        sp_o2=request.form['sp_o2'],
        y_predicted=y_predicted)

if __name__ == "__main__":
    app.run(debug=True)
