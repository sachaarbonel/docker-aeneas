FROM python:2.7-slim-buster
ADD install_dependencies.sh install_dependencies.sh
RUN bash install_dependencies.sh
RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

RUN pip install beautifulsoup4 && pip install lxml &&  pip install numpy && pip install aeneas

CMD [ "python" ]