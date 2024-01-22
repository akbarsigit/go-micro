# BUILD A TINY DOCKER IMAGE
FROM alpine:latest
# new docker image, so its okey
RUN mkdir /app
# Copy the mailServiceApp executable, then paste it in app dir in our own
COPY mailServiceApp /app
COPY templates /templates

# run the executable
CMD ["/app/mailServiceApp"]