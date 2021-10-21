FROM python:3.9.4-slim-buster
WORKDIR /app
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0
EXPOSE 8000
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY app .
CMD ["flask", "run"]
