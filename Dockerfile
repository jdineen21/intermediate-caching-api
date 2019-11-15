FROM python:3.8.0-buster

WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install -r requirements.txt

COPY ./main.py ./

EXPOSE 5000
CMD [ "python", "./main.py" ]