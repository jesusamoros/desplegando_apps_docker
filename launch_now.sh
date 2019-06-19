#construimos el docker con el docker file
docker build -t nombre_cont_back -f ./Dockerfile.dev .

#Creamos una network
docker network create mynet

#Eliminamos por si ya existe el contenedor.
docker rm name_contenedor -f

#Creamos el contenedor por ejemplo de mongo
docker run -d --name mongo -v $PWD/volumes/mongo:/etc/mongo --net dgn -p 27017:27017 mongo

#Eliminamos por si ya existe el  contenedor del back.
docker rm  nombre_cont_back -f
docker run -v $PWD:/repo -d --name nombre_cont_back --net mynet -p 3000:3000 nombre_cont_back
