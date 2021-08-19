# syntax=docker/dockerfile:1

FROM ubuntu:latest
RUN apt-get update && apt-get upgrade -y
RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata
RUN apt-get install python3 python3-pip nginx -y

# Add the user and set work dir
RUN useradd -ms /bin/bash taska1
WORKDIR /app

# Copy files and install requirements
COPY . .
COPY ./nginx/nginx.conf /etc/nginx
RUN pip3 install -r requirements.txt
RUN nginx

EXPOSE 8000

# Run the flask application
CMD ["python3", "-m", "gunicorn", "wsgi:app"]