FROM ubuntu:latest
MAINTAINER Tan Dat "datb2203438@student.ctu.edu.vn"
RUN apt update -y
RUN apt install -y python3-pip python3-dev build-essential python3-venv
RUN python3 -m venv /flask_app/venv
ADD . /flask_app
WORKDIR /flask_app
RUN /flask_app/venv/bin/pip install -r requirements.txt
ENTRYPOINT ["/flask_app/venv/bin/python"]
CMD ["flask_docker.py"]
