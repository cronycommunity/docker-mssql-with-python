#TODO: Add network for database connection on container run command

echo "start"

docker image build . --platform=linux/amd64 -t flask_docker_image || true

docker stop flask-web || true
docker rm flask-web || true

docker container run --platform=linux/amd64 --name flask-web -d \
	-p 5000:5000 --rm flask_docker_image:latest

echo "end"