#You can run flask app with command "flask run"
from src import app

#You also can run app like a normal python app with command "python run.py"
if __name__ == '__main__':
    app.run(host='0.0.0.0', debug=True)