#clonamos el repo 
git clone repositori.git
#construimos el docker con el docker file
docker build -t nombre_cont_back -f ./Dockerfile.dev .

#Creamos una network
docker network create mynet

#Eliminamos 
docker rm name_contenedor -f

#Arrancamos el contenedor por ejemplo de mongo
docker run -d --name mongo -v $PWD/volumes/mongo:/etc/mongo --net dgn -p 27017:27017 mongo

#Eliminamos 
docker rm  nombre_cont_back -f
docker run -v $PWD:/repo -d --name nombre_cont_back --net mynet -p 3000:3000 nombre_cont_back

#Ahora el FRONT
#clonamos el repo 
git clone front.repositorio.git

##construimos el docker con el docker file
docker build -t front-container -f ./Dockerfile .

#Eliminamos 
docker rm front-container -f

#Arrancamos el contenedor por ejemplo de mongo
docker run -d --name front-container-v $PWD:/repo --net proxy front-container
