FROM alpine:latest
ENV env=container
COPY back/src /app/src/
COPY back/requirements.txt /app/requirements.txt
RUN apk add --no-cache python3 py3-pip
RUN pip3 install -r /app/requirements.txt --break-system-packages
WORKDIR /app/src/
ENTRYPOINT [ "uvicorn", "main:api", "--host", "0.0.0.0", "--port", "8000" ]
