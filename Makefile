DOCKER_NAMESPACE=labasc
DOCKER_REPO=serve

all: build bake

build:
	exit 0

bake:
	docker build -t ${DOCKER_NAMESPACE}/${DOCKER_REPO}:latest .

run:
	docker run -d --name ${DOCKER_REPO} ${DOCKER_NAMESPACE}/${DOCKER_REPO}

tag:
	docker tag ${DOCKER_NAMESPACE}/${DOCKER_REPO} ${DOCKER_NAMESPACE}/${DOCKER_REPO}:${TAG}

push-latest:
	docker push ${DOCKER_NAMESPACE}/${DOCKER_REPO}:latest

push-tag:
	docker push ${DOCKER_NAMESPACE}/${DOCKER_REPO}:${TAG}

docker-login:
	@docker login -u "${DOCKER_ID}" -p "${DOCKER_PASS}"

docker-remove:
	docker rm -f ${DOCKER_REPO}

docker-logs:
	docker logs ${DOCKER_REPO}