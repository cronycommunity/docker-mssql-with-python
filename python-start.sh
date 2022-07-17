echo "start"

docker image build . -t flask_docker_image || true

docker container run --network="host" \
	flask_docker_image:latest

echo "end"