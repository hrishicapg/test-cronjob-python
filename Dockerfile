from ubuntu:latest

WORKDIR /app

RUN apt-get update && apt-get -y install cron \
&& apt-get install python3
COPY . ./
COPY cron-job /etc/cron.d/cron-job
RUN chmod 0744 /etc/cron.d/cron-job