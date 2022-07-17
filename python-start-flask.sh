echo "start"

docker image build . --platform=linux/amd64 -t flask_docker_image || true

docker stop flask-web || true
docker rm flask-web || true

docker container run --platform=linux/amd64 --network="host" --name flask-web \
	flask_docker_image:latest

echo "end"