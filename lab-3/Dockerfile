ARG PYTHON_VERSION=3.10.2

FROM python:${PYTHON_VERSION}

WORKDIR /app

COPY requirements.txt .
RUN pip3 install -r requirements.txt

COPY . .
RUN python3 manage.py collectstatic --noinput