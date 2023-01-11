# wealthyrace

# Go Application with Hot Reloading

This is a project template for a Go application with hot reloading, it includes a `docker-compose.yml` file for setting up a Go service that connects to a PostgreSQL database and a `Makefile` for automating common tasks.

## Requirements
- Docker
- docker-compose
- Make

## Setup

1. Clone the repository:

# git clone https://github.com/yourusername/go-hot-reloading

2. Build the service images:

```
 make build
```

3. Start the services:

```
 make up
```

The application will be available at `http://localhost:8080` and the database at `postgres://user:password@localhost:5432/dbname`

## Usage

- To stop the services:

```
make down
```

- To restart the services:

```
make restart
```

- To see the logs of the services:

```
make logs
```