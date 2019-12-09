FROM python:3.7-alpine
LABEL exposed.command.single=bandit
VOLUME ["/results"]
VOLUME ["/src"]

RUN pip install bandit==1.6.2

COPY bandit.sh /
WORKDIR /src
ENTRYPOINT ["/bandit.sh"]
CMD ["scan-text"]


