FROM golang:latest

# Set the working directory in the container
WORKDIR /app

# Copy the local code into the container
COPY . .

# Set the environment variable
ENV GO111MODULE=on
ENV GO_ENV=${GO_ENV}

# Install fresh
RUN go get github.com/gravityblast/fresh

# Install any additional dependencies your application needs
RUN go get github.com/gin-gonic/gin

# Build the Go application
RUN go build -o main .

CMD ["fresh", "-c", "fresh.conf"]
