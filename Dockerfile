FROM kartoza/postgis:11.5-2.8
RUN apt update && apt install git cmake -y
RUN wget https://bootstrap.pypa.io/pip/2.7/get-pip.py
RUN python get-pip.py
RUN pip install pgxnclient
RUN pgxn install h3
ENTRYPOINT /scripts/docker-entrypoint.sh
