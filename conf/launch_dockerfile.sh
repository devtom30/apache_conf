docker build -t dropofculture-apache .
docker run -dit --name dropofculture-apache -p 8084:80 dropofculture-apache