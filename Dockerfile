FROM ubuntu:24.04
RUN apt update && apt install -y python3 python3-pip python3-dev git curl zip wget 

WORKDIR app

COPY . /app
RUN pip install -r requirements.txt --break-system-packages
RUN chmod 777 -R *

CMD bash start

