FROM python:3

EXPOSE 5000

WORKDIR /blog

COPY . .

RUN pip install flask

RUN pip install flask-sqlalchemy

RUN pip install bcrypt

RUN pip install flask-login

RUN pip install flask-bcrypt

RUN pip install flask-wtf

RUN pip install wtforms

CMD ["python", "run.py"]

RUN pip install Pillow
