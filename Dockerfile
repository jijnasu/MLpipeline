FROM python:3.10-slim-buster
WORKDIR /app
COPY . /app

RUN apt update -y && apt install awscli -y

RUN pip install -r requirements.txt
CMD ["python3", "app.py"]


# FROM python:3.10-alpine
# WORKDIR /app
# COPY . /app

# RUN pip install --upgrade pip
# RUN pip install -r requirements.txt
# CMD ["python3", "app.py"]