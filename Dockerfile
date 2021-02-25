FROM python:3.8-slim-buster

ARG WORKDIR
ARG USER
ARG APP_HOME
ARG STATIC_ROOT

ENV PYTHONDONTWRITEBYTECODE=1 PYTHONUNBUFFERED=1

WORKDIR $WORKDIR

RUN pip install --upgrade pip
COPY ./requirements.txt $WORKDIR/requirements.txt
RUN pip install -r requirements.txt

RUN adduser --system --group $USER
RUN mkdir $APP_HOME
RUN mkdir $STATIC_ROOT
WORKDIR $APP_HOME

COPY . $APP_HOME
RUN chown -R $USER:$USER $APP_HOME
USER $USER
