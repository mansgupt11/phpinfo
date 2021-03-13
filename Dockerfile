FROM alpine

WORKDIR /app

#COPY src /app
#COPY LOCAL_FOLDER CONTAINER_LOCATION
COPY src .

#RUN apt install php
RUN apk add php

ENTRYPOINT ["php"]

CMD ["-f","index.php","-S","0.0.0.0:8080"]

EXPOSE 8080
