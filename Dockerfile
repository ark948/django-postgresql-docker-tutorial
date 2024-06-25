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
COPY ./django_crispy_forms-1.14.0-py3-none-any.whl .
COPY ./crispy_bootstrap5-0.6-py3-none-any.whl .
COPY ./PyJWT-2.8.0-py3-none-any.whl .
COPY ./defusedxml-0.7.1-py2.py3-none-any.whl .
COPY ./python3_openid-3.2.0-py3-none-any.whl .
COPY ./certifi-2024.6.2-py3-none-any.whl .
COPY ./charset_normalizer-3.3.2-py3-none-any.whl .
COPY ./idna-3.7-py3-none-any.whl .
COPY ./urllib3-2.2.1-py3-none-any.whl .
COPY ./requests-2.32.3-py3-none-any.whl .
COPY ./oauthlib-3.2.2-py3-none-any.whl .
COPY ./requests_oauthlib-2.0.0-py2.py3-none-any.whl .
COPY ./pycparser-2.22-py3-none-any.whl .
COPY ./cffi-1.16.0-cp310-cp310-manylinux_2_17_x86_64.manylinux2014_x86_64.whl .
COPY ./cryptography-42.0.8-cp39-abi3-manylinux_2_28_x86_64.whl .
COPY ./django_allauth-0.57.0-py3-none-any.whl .
COPY ./python_dotenv-1.0.1-py3-none-any.whl .
COPY ./packaging-24.1-py3-none-any.whl .
COPY ./marshmallow-3.21.3-py3-none-any.whl .
COPY ./environs-11.0.0-py3-none-any.whl .
COPY ./dj_database_url-2.2.0-py3-none-any.whl .
COPY ./Pillow-9.0.1-cp310-cp310-manylinux_2_17_x86_64.manylinux2014_x86_64.whl .
RUN pip install typing_extensions-4.12.2-py3-none-any.whl
RUN pip install asgiref-3.8.1-py3-none-any.whl
RUN pip install sqlparse-0.5.0-py3-none-any.whl
RUN pip install tzdata-2024.1-py2.py3-none-any.whl
RUN pip install Django-4.0.10-py3-none-any.whl
RUN pip install psycopg2_binary-2.9.9-cp310-cp310-manylinux_2_17_x86_64.manylinux2014_x86_64.whl
RUN pip install django_crispy_forms-1.14.0-py3-none-any.whl
RUN pip install crispy_bootstrap5-0.6-py3-none-any.whl
RUN pip install PyJWT-2.8.0-py3-none-any.whl
RUN pip install defusedxml-0.7.1-py2.py3-none-any.whl
RUN pip install python3_openid-3.2.0-py3-none-any.whl
RUN pip install certifi-2024.6.2-py3-none-any.whl
RUN pip install charset_normalizer-3.3.2-py3-none-any.whl
RUN pip install idna-3.7-py3-none-any.whl
RUN pip install urllib3-2.2.1-py3-none-any.whl
RUN pip install requests-2.32.3-py3-none-any.whl
RUN pip install oauthlib-3.2.2-py3-none-any.whl
RUN pip install requests_oauthlib-2.0.0-py2.py3-none-any.whl
RUN pip install pycparser-2.22-py3-none-any.whl
RUN pip install cffi-1.16.0-cp310-cp310-manylinux_2_17_x86_64.manylinux2014_x86_64.whl
RUN pip install cryptography-42.0.8-cp39-abi3-manylinux_2_28_x86_64.whl
RUN pip install django_allauth-0.57.0-py3-none-any.whl
RUN pip install python_dotenv-1.0.1-py3-none-any.whl
RUN pip install packaging-24.1-py3-none-any.whl
RUN pip install marshmallow-3.21.3-py3-none-any.whl
RUN pip install environs-11.0.0-py3-none-any.whl
RUN pip install dj_database_url-2.2.0-py3-none-any.whl
RUN pip install Pillow-9.0.1-cp310-cp310-manylinux_2_17_x86_64.manylinux2014_x86_64.whl
RUN pip freeze > requirements.txt

COPY . .