docker build -t novedades .
docker run -p 5000:5000 --name minovedad novedades

docker start minovedad