FROM python:3-alpine
ARG group=jncep
ARG user=jncep
ARG home=/home/$user
COPY ./scripts /scripts
RUN apk --no-cache add bash
RUN pip install --no-cache-dir jncep
ENTRYPOINT /bin/sh
