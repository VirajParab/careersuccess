FROM golang:latest

# Set the working directory in the container
WORKDIR /app

# Copy the local code into the container
COPY . .

# Set the environment variable
ENV GO111MODULE=on
ENV GO_ENV=${GO_ENV}

# Build the Go application
RUN go build -o main .

CMD ["./fresh", "-c", "fresh.conf"]
