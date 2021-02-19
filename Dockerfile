FROM python:3.6


WORKDIR /usr/scr/app

RUN git clone https://github.com/gontxomde/flask-example.git
WORKDIR ./flask-example

COPY . ./
RUN pip install --no-cache-dir -r requirements.txt

ENTRYPOINT python app.py