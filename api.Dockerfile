FROM alpine:latest
ENV env=container
COPY back/src /app/src/
RUN apk add --no-cache python3 py3-pip
RUN pip3 install psycopg2-binary fastapi fastapi[standard] pillow --break-system-packages
RUN mkdir -p /app/storage/logos
WORKDIR /app/src/
ENTRYPOINT [ "uvicorn", "main:api", "--host", "0.0.0.0", "--port", "8000" ]
