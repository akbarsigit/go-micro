# # base go image
# FROM golang:1.21.6-alpine as builder
# # in docker, make an app dir
# RUN mkdir /app
# # copy folder in the current directory to the folder app in docker
# COPY . /app
# # set the curret working directory to app
# WORKDIR /app
# # set env C library to none -> build the go file from cmd/api dir
# RUN CGO_ENABLE=0 go build -o brokerApp ./cmd/api
# # add executable flag so it can be executable (optional)
# RUN chmod +x /app/brokerApp

# # BUILD A TINY DOCKER IMAGE
# FROM alpine:latest
# # new docker image, so its okey
# RUN mkdir /app
# # Copy from builer image, copy the brokerApp executable, then paste it in app dir in our own
# COPY --from=builder /app/brokerApp /app
# # run the executable
# CMD ["/app/brokerApp"]


# BUILD A TINY DOCKER IMAGE
FROM alpine:latest
# new docker image, so its okey
RUN mkdir /app
# Copy the brokerApp executable, then paste it in app dir in our own
COPY brokerApp /app
# run the executable
CMD ["/app/brokerApp"]