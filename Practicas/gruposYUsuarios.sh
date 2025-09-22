# Creamos los grupos
sudo groupadd grupo1
sudo groupadd grupo2

# Creamos los 4 usuarios
sudo useradd -m user1
sudo useradd -m user2
sudo useradd -m user3
sudo useradd -m user4

# Establecemos una contraseña para cada usuario
sudo passwd user1
# Introduce 'usuario' dos veces cuando te lo pida
sudo passwd user2
# Introduce 'usuario' dos veces cuando te lo pida
sudo passwd user3
# Introduce 'usuario' dos veces cuando te lo pida
sudo passwd user4
# Introduce 'usuario' dos veces cuando te lo pida

# Introducimos los 4 usuarios a los grupos
# Grupo 1
sudo usermod -aG grupo1 user1
sudo usermod -aG grupo1 user2
# Grupo 2
sudo usermod -aG grupo2 user3
sudo usermod -aG grupo2 user4

# Cambiamos el propietario y el grupo
sudo chown -R usuario1:grupo1 /datos
sudo chmod -R 750 /datos

# Cambiar al nuevo usuario 
su - usuario1
echo $(whoami) > /datos/validar1.txt

exit 
