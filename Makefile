include .env

.PHONY: init
init:
	$(eval IMAGE=${DOCKER_USER}/${IMAGE_NAME}:${TAG})

.PHONY: build
build: init
	docker build \
	--build-arg PYTHON_VERSION=${PYTHON_VERSION} \
	--build-arg R_VERSION=${R_VERSION} \
	--build-arg R_DEV_VERSION=${R_DEV_VERSION} \
	-t ${IMAGE} .

.PHONY: shell
shell: init
	docker run -it --rm -v ${PWD}:${HOME_CONTAINER}/workdir ${IMAGE}

.PHONY: test
test: init
	docker run -it --rm -v ${PWD}/test:${HOME_CONTAINER}/workdir ${IMAGE} sh test.sh

.PHONY: push
push: init
	docker push ${IMAGE}