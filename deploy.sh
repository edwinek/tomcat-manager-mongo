#!/usr/bin/env bash

function cleanup_containers_and_files() {
	docker rm tomcat_container
	docker rm mongo_container
}

cleanup_containers_and_files

docker build -t tomcat_image tomcat/.
docker build -t mongo_image mongo/.
docker run --name mongo_container -p 27017:27017 -d mongo_image
docker run --link mongo_container:mongoip --name tomcat_container -ti -p 8080:8080 tomcat_image

docker stop tomcat_container
docker stop mongo_container

cleanup_containers_and_files
