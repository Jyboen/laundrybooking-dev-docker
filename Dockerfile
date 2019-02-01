FROM python:3
ENV PYTHONUNBUFFERED 1
RUN apt-get update && apt-get --yes install postgresql-client
RUN mkdir /code /tools
WORKDIR /code
COPY laundrybooking/requirements.txt /code/
RUN pip install -r requirements.txt
COPY tools/wait-for-postgres /tools/
