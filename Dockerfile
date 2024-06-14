FROM python:3.10.4-slim-bullseye

ENV PIP_DISABLE_PIP_VERSION_CHECK 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /code

COPY ./typing_extensions-4.12.2-py3-none-any.whl .
COPY ./asgiref-3.8.1-py3-none-any.whl .
COPY ./sqlparse-0.5.0-py3-none-any.whl .
COPY ./tzdata-2024.1-py2.py3-none-any.whl .
COPY ./Django-4.0.10-py3-none-any.whl .
COPY ./psycopg2_binary-2.9.9-cp310-cp310-manylinux_2_17_x86_64.manylinux2014_x86_64.whl .
RUN pip install typing_extensions-4.12.2-py3-none-any.whl
RUN pip install asgiref-3.8.1-py3-none-any.whl
RUN pip install sqlparse-0.5.0-py3-none-any.whl
RUN pip install tzdata-2024.1-py2.py3-none-any.whl
RUN pip install Django-4.0.10-py3-none-any.whl
RUN pip install psycopg2_binary-2.9.9-cp310-cp310-manylinux_2_17_x86_64.manylinux2014_x86_64.whl

COPY . .