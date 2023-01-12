build:
	docker-compose -f dev-docker.compose.yaml build 

up:
	docker-compose -f dev-docker.compose.yaml up

down:
	docker-compose -f dev-docker.compose.yaml down

restart: down -f dev-docker.compose.yaml up

logs:
	docker-compose logs -f