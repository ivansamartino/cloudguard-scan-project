FROM redis:latest as img2

RUN echo "hello2" >> /tmp/somefile

