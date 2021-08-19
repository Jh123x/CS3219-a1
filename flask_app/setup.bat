docker build -t taska1 .
docker run -dt --name taska1 -p 80:8000 taska1
explorer "http://localhost"