FROM python:3.8.0-alpine3.10

WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY ./main.py .

EXPOSE 5000
CMD [ "python", "./main.py" ]