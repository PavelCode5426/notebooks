FROM jupyter/minimal-notebook

MAINTAINER https://pavelcode5426.github.io

WORKDIR /app

COPY requirements.txt .

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

COPY . .

VOLUME /app/notebooks