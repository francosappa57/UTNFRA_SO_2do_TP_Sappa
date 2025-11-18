sudo vim dockerfile
docker build -t francosappa/web1-sappa:latest .
docker run -d -p 8080:80 francosappa/web1-sappa:latest
docker push francosappa/web1-sappa:latest
sudo vim run.sh
sudo chmod +x run.sh
