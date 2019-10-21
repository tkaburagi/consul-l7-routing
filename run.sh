#!/bin/sh

cd consul-l7-api-v1 

./mvnw clean package -DskipTests

cd ../consul-l7-api-v2

./mvnw clean package -DskipTests

cd ../consul-l7-client

./mvnw clean package -DskipTests

cd ..

docker-compose build --no-cache

docker-compose up