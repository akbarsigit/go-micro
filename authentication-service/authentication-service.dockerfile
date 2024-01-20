# BUILD A TINY DOCKER IMAGE
FROM alpine:latest
# new docker image, so its okey
RUN mkdir /app
# Copy the brokerApp executable, then paste it in app dir in our own
COPY authApp /app
# run the executable
CMD ["/app/authApp"]