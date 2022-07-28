
ARG PYTHON_VERSION="3.10-slim-buster"


################################################################################################
################################################################################################

FROM python:${PYTHON_VERSION} as consumer

WORKDIR /opt/apps
RUN pip install kafka-python
COPY ./consumer.py .

CMD [ "python", "consumer.py"]

################################################################################################
################################################################################################

FROM python:${PYTHON_VERSION} as producer

WORKDIR /opt/apps
RUN pip install kafka-python
COPY ./producer.py .

ENTRYPOINT [ "python", "producer.py"]