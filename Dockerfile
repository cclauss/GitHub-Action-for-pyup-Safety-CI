FROM python:3.12-alpine

LABEL "com.github.actions.name"="GitHub Action for pyup-Safety-CI"
LABEL "com.github.actions.description"="Run safety commands"
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="blue"

RUN apk add --no-cache bash gcc
RUN pip install --upgrade pip
RUN pip install safety
RUN python --version ; pip --version ; safety --version

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
