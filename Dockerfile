FROM python:3.7.4-slim-buster

LABEL Author="Daniel Omar Vergara Pérez"
LABEL Description="Docker image with data science in mind"

RUN apt-get update
RUN apt-get install -y libpq-dev gcc

RUN pip install --upgrade pip

RUN pip install pipenv

COPY Pipfile* /tmp/

RUN cd /tmp && pipenv lock --requirements > requirements.txt

RUN pip install --no-cache-dir -r /tmp/requirements.txt

CMD ["bash"]
