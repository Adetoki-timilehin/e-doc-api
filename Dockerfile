FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD ["python3", "e-doc-api.py"]

ENV FLASK_APP=e-doc-api.py

EXPOSE 5000

CMD ["flask", "run", "--host", "0.0.0.0", "--port", "5000"]
