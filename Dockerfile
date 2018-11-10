FROM haskell:latest
ADD . /app
EXPOSE 8080
WORKDIR /app
CMD make run