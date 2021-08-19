docker build -t taska1 .
docker run --name taska1 -p 80:8000 taska1
firefox "http://localhost"