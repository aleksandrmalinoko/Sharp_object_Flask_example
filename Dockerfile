FROM python:3.6
COPY .  /Flask_example
WORKDIR /Flask_example
RUN pip install -r requirements.txt
EXPOSE  8000
CMD ["python", "app.py"]