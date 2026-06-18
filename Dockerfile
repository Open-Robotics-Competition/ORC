#Jank dockerfile for self hosting
FROM alpine:latest

RUN apk add --no-cache git hugo

WORKDIR /src

# Copy everything from the repo into the container
COPY . .

RUN chmod +x ./entrypoint.sh

EXPOSE 1313

ENTRYPOINT ["./entrypoint.sh"]
